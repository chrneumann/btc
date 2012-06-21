this.btc = {}
btc = this.btc


# Play given instrument.
#
# Caches audio elements.
instrument_sounds = {}
playSound = (instrument) ->
  if not instrument_sounds[instrument]?
    audio = document.createElement("audio")
    source = document.createElement("source")
    prefix = 'sounds/' + instrument
    if audio.canPlayType('audio/mpeg;')
      source.type = 'audio/mpeg'
      source.src = prefix + '.mp3'
    else
      source.type= 'audio/ogg'
      source.src = prefix + '.ogg'
    audio.appendChild(source)
    instrument_sounds[instrument] = audio
  sound = instrument_sounds[instrument]
  if !sound.paused
    sound.pause()
    sound.currentTime = 0.0
  sound.play()


# Represents a tune.
class Tune
  constructor: (data) ->
    @name = data.name
    @bars = data.bars
    @measure = data.measure
    @length = data.length
    @breaks = {}
    for key, val of data.breaks
      break_ = new Break(data.breaks[key])
      @breaks[break_.name] = break_

  get_break: (name) ->
    return @breaks[name]

  get_all_instruments: ->
    instruments = {}
    for instrument in @breaks['Groove'].get_instruments()
      instruments[instrument.name] = instrument
    instrument_vals = []
    for name, val of instruments
      instrument_vals.push(val)
    return instrument_vals


# Represents a break in a tune.
class Break
  constructor: (data) ->
    @name = data.name
    @length = data.length
    @solo = data.solo
    @instruments = []
    for name, voices of data.instruments
      @instruments.push(new Instrument(name, voices))

  get_instruments: ->
    return @instruments


# Represents one instrument in a break.
class Instrument
  constructor: (@name, voices) ->
    titles = {
      surdo_low: "Low Surdo",
      surdo_mid: "Mid Surdo",
      surdo_high: "High Surdo",
      surdo: "All Surdos",
      other: "All others",
    }
    if @name of titles
      @title = titles[@name]
    else
      @title = @name.substr(0,1).toUpperCase() + @name.substr(1)
    @_notes = []
    for voice, times of voices
      for time in times
        @_notes.push({'voice': voice, 'time': time })
    @_notes.sort((left, right) -> left.time - right.time)
    @reset()

  reset: ->
    @_pos = 0

  peek: ->
    if @_pos < @_notes.length then @_notes[@_pos] else undefined

  pop: ->
    ret = if @_pos < @_notes.length then @_notes[@_pos] else undefined
    @_pos += 1

  get_notes: ->
    @_notes


# Handles playing of a tune.
class Player
  constructor: ->
    @tunes = [funk, afoxe, custard]
    for tune in @tunes
      $('#tune')
          .append($('<option>', { value : tune.name })
          .text(tune.name));
    $('#tune').change(=> @change_tune($('#tune').val()))

    @change_tune("Funk")
    @change_break("Groove")

    @bpm = 120
    @step = 20

    @running = false
    date = new Date()
    @ticks = 0
    @last_ticks = date.getTime()

    startstop = =>
      @toggle_running()
      if @running
        $("#start").hide()
        $("#stop").show()
      else
        $("#start").show()
        $("#stop").hide()

    $("#start").click(startstop)
    $("#stop").click(startstop)
    $("#stop").hide()
    $("#bpm").val(@bpm)
    $("#bpm").change(=> @bpm = $("#bpm").val())

    @restart()

  # Start break from the beginning
  restart: ->
    @_restart = true

  change_tune: (tune_name) ->
    for tune in @tunes
      if tune.name == tune_name
        @tune = new Tune(tune)
        break
    $('#break').children().remove()
    for key, value of @tune.breaks
      $('#break')
          .append($('<option>', { value : key })
          .text(key));
    $('#break').change(=> @change_break($('#break').val()))
    @change_break('Groove')
    @restart()

  change_break: (thabreak_name) ->
    @break = @tune.get_break(thabreak_name)
    @_draw_notes()
    @restart

  _draw_notes: ->
    root = $("#instruments")
    base = root.children("#instrument")
    base.hide()
    root.children(".instrument:visible").empty().remove()
    for instrument in @break.get_instruments()
      clone = base.clone()
      $(clone).children('.instrument-name').html(instrument.title)
      clone.attr('id', "instrument_#{instrument.name}")
      $(clone).show()
      $("#instrument").after(clone)
      last_time = 0
      note_width = 2
      notes = $(clone).children('.instrument-notes')
      for note in instrument.get_notes()
        symbols = {
          beat: 'x',
          shadow: '.',
          dampened: 'O',
        }
        if note.voice of symbols
          symbol = symbols[note.voice]
        else
          symbol = note.voice.substr(0,1)
        note_node = $('<div class="instrument-note" style="margin-left:' + (note.time - last_time - (if last_time > 0 then note_width else 0))+'em; width:'+ note_width + 'em' + '" id=' + "instrument_#{instrument.name}_note_#{note.voice}_#{note.time}" + '>' + symbol + '</div>')
        last_time = note.time
        notes.append(note_node)

  toggle_running: ->
    @running = not @running
    @loop() if @running

  loop: ->
    if @running
      setTimeout((=> @loop()), @step)
    @_tick()

  _restart_init: ->
    for instrument in @break.get_instruments()
      instrument.reset()
    @time = 1
    @last_time = 0
    @_restart = false
    @_draw_notes()

  _tick: ->
    date = new Date()
    @ticks = date.getTime()
    tick_diff = @ticks - @last_ticks
    @last_ticks = @ticks
    @time += tick_diff / 1000.0 * @bpm/60.0 * @tune.measure

    $('#bar').css('margin-left', @time + 6.5 + 'em')

    if Math.floor(@time) > Math.floor(@last_time)
      @last_time = @time

    length = @break.length or @tune.length
    if @time >= @tune.measure * @tune.bars * length + 1
      @restart()

     for instrument in @break.get_instruments()
      if instrument.peek() and @time >= instrument.peek().time
        peek = instrument.peek()
        $("#instrument_#{instrument.name}_note_#{peek.voice}_#{peek.time}").css('color', 'red')
        if instrument.name == 'everyone'
          for i in @tune.get_all_instruments()
            if not (i.name in ['shaker'])
              playSound("#{i.name}_beat")
        else if instrument.name == 'others'
          for i in @tune.get_all_instruments()
              if not (i.name in [@break.solo, 'shaker'])
                playSound("#{i.name}_beat")
        else
          playSound("#{instrument.name}_#{peek.voice}")
        instrument.pop()

    if @_restart
      @_restart_init()

$(document).ready(->
  player = new Player()
)