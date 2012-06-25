funk =
  name: "Funk"
  tune_sign: "glasses_on_eyes"
  bars: 4
  measure: 4
  length: 2
  breaks: [
    {
      name: "Groove"
      instruments:
        surdo:
          beat: [1, 4, 7, 9, 11, 17, 20, 23, 25]
        repinique:
          flare: [1, 5, 9, 13, 17, 21, 25]
          rim: [31]
          hand: [4, 8, 12, 16, 20, 24, 28, 30, 32]
          beat: [29]
        snare:
          beat: [5, 13, 21, 29]
          shadow: [1, 2, 3, 4, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18,
                   19, 20, 22, 23, 24, 25, 26, 27, 28, 30, 31, 32]
        tamborim:
          beat: [5, 13, 15, 21, 27, 29]
        agogo:
          low: [1, 7, 17, 23]
          high: [4, 11, 13, 15, 20, 27, 29, 31]
    },
    {
      name: "Break 1"
      length: 4
      instruments:
        surdo:
          beat: [1, 3, 9, 11, 15, 17, 19, 25, 33, 35, 41, 43, 47, 49, 51,
                 57]
        agogo:
          high: [5, 7, 13, 21, 23, 27, 31, 37, 39, 45, 53, 55, 59, 60, 61]
    },
    {
      name: "Break 2"
      length: 1
      instruments:
        agogo:
          high: [1,3,5,7,9,11,13,15]
    },
    {
      name: "Call Break"
      length: 1
      instruments:
        agogo:
          high: [1,5,6.333,7.666,9]
          low: [13]
    }]

afoxe =
  name: "Afoxe"
  sign: "afoxe"
  bars: 4
  measure: 4
  length: 2
  breaks: [
    {
      name: "Groove"
      instruments:
        surdo_low:
          beat: [25, 29]
          silent: [1, 5, 9, 13, 17, 21]
        surdo_mid:
          dampened: [1, 9, 17]
          beat: [7, 15, 23, 25, 27, 29, 31]
        surdo_high:
          dampened: [1, 9, 17]
          beat: [7, 15, 23, 25, 27, 29, 31]
        repinique:
          rim: [7, 15, 23, 27, 31]
          flare: [1, 9, 17]
          hand: [4, 12, 20]
          silent: [5, 13, 21, 25, 29]
        snare:
          beat: [1, 5, 8, 9, 12, 17, 21, 24, 25, 28]
          shadow: [2, 3, 4, 6, 7, 10, 11, 13, 14, 15, 16, 18, 19, 20, 22,
                   23, 26, 27, 29, 30, 31, 32]
        tamborim:
          beat: [1, 3, 5, 7, 9, 10, 12, 13, 15, 17, 19, 21, 23, 25, 26,
                 28, 29, 31]
        agogo:
          high: [1, 3, 9, 10, 17, 19, 25, 26]
          low: [5, 7, 12, 14, 15, 21, 23, 28, 30, 31]
        shaker:
          beat: [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31]
    },
    {
      name: "Bra Break"
      sign: "bra_break"
      length: 4
      instruments:
        others:
          beat: [9, 10, 12, 13, 41, 42, 44, 45, 73, 74, 76, 77]
        everyone:
          beat: [97, 99, 101, 103, 105, 106, 108, 109, 111]
        repinique:
          beat:  [1, 3, 5, 33, 35, 37, 65, 67, 69]
    },
    {
      name: "Tamborim Stroke"
      sign: "tamborim_break"
      length: 1
      instruments:
        everyone:
          beat: [1, 3, 5, 7, 9, 10, 12, 13, 15]
    }]

custard =
  name: "Custard"
  sign: "custard"
  bars: 4
  measure: 4
  length: 1
  breaks: [
    {
      name: "Groove"
      instruments:
        surdo_low:
          dampened: [1, 9]
          beat: [5, 13, 15]
        surdo_mid:
          beat: [1, 9]
          dampened: [5, 13]
        surdo_high:
          beat: [1, 3, 9, 10, 12]
          dampened: [5, 13]
        repenique:
          beat: [3, 4, 7, 8, 11, 12, 15, 16]
        snare:
          beat: [1, 3, 5, 8, 10, 13]
          shadow: [2, 4, 6, 7, 9, 11, 12, 14, 15, 16]
        tamborim:
          beat: [1, 3, 5, 6, 8, 10, 12, 14, 15]
        agogo:
          high: [1, 3, 8, 10]
          low: [5, 6, 12, 14, 15]
        shaker:
          beat: [1, 3, 5, 7, 9, 11, 13, 15]
    },
    {
      name: "Break 1"
      length: 4
      solo: "surdo"
      instruments:
        surdo:
          beat: [1, 3, 5, 6, 17, 19, 21, 22, 33, 35, 37, 38]
        others:
          beat: [8, 10, 12, 14, 15, 24, 26, 28, 30, 31, 40, 42, 44, 46, 47]
        everyone:
          beat: [49, 51, 53, 54, 56, 58, 60, 62, 63]
    },
    {
      name: "Break 2"
      solo: "tamborim"
      length: 4
      instruments:
        tamborim:
          beat: [1, 3, 5, 6, 17, 19, 21, 22, 33, 35, 37, 38]
        others:
          beat: [8, 10, 12, 14, 15, 24, 26, 28, 30, 31, 40, 42, 44, 46, 47]
        everyone:
          beat: [49, 51, 53, 54, 56, 58, 60, 62, 63]
    },
    {
      name: "Break 3"
      length: 8
      instruments:
        others:
          beat: [1, 15, 17, 33, 47, 49, 51, 65, 67, 83, 97, 99]
        snare:
          beat: [99, 101, 103, 106, 108, 111, 112, 113, 114]
          shadow: [100, 102, 104, 105, 107, 109, 110]
    },
    {
      name: "Break 5"
      length: 4
      solo: "snare"
      instruments:
        others:
          beat: [15, 17, 31, 33, 39, 41, 47, 49, 53, 57, 61]
        snare:
          beat: [1, 3, 5, 8, 10, 13, 19, 21, 24, 26, 29, 35, 37, 43, 45,
                 51, 55, 59, 63]
          shadow: [2, 4, 6, 7, 9, 11, 12, 20, 22, 23, 25, 27, 28]
    }]


use_flash = false

sm_sounds = {}

soundManager.url = 'ext/soundmanager/swf/';
soundManager.debugFlash = false
soundManager.useHighPerformance = true
soundManager.useFastPolling = true
soundManager.debugMode = false
if use_flash
  soundManager_preferFlash = true
  soundManager.useHTML5Audio = false
else
  soundManager.preferFlash = false
  soundManager.useHTML5Audio = true
#soundManager.flashPollingInterval = 5
#soundManager.html5PollingInterval = 100
#soundManager.waitForWindowLoad = false

# Play given instrument.
#
# Caches audio elements.
playSound = (instrument) ->
  if not sm_sounds[instrument]?
#    pan = Math.floor(Math.random() * 200 - 100)
    sm_sounds[instrument] = soundManager.createSound({
      id: 'sound_' + instrument,
      url: ['sounds/' + instrument + '.ogg', 'sounds/' + instrument + '.mp3', 'sounds/' + instrument + '.wav'],
      autoLoad: true,
      autoPlay: false,
      volume: 50,
#      pan: pan,
    })
  sm_sounds[instrument].play()


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
    @ticks = 0

    startstop = =>
      @toggle_running()
      if @running
        $("#start").hide()
        $("#pause").show()
      else
        $("#start").show()
        $("#pause").hide()

    $("#start").click(startstop)
    $("#pause").click(startstop)
    $("#restart").click(=> @restart())
    $("#pause").hide()
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
    @restart()

  _draw_notes: ->
    root = $("#instruments")
    base = root.children("#instrument")
    base.hide()
    root.children(".instrument:visible").empty().remove()
    even = true
    for instrument in @break.get_instruments()
      clone = base.clone()
      $(clone).children('.instrument-name').html(instrument.title)
      clone.attr('id', "instrument_#{instrument.name}")
      if even
        clone.addClass('even-row')
        even = false
      else
        even = true
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
    date = new Date()
    @last_ticks = date.getTime()
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