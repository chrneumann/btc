var funk = { name: 'Funk',
						 tune_sign: 'glasses_on_eyes',
						 bars: 4,
						 measure: 4,
						 length: 2,
						 breaks: 
						 [ { name: 'Groove',
								 instruments: 
								 { surdo: { beat: [ 1, 4, 7, 9, 11, 17, 20, 23, 25 ] },
									 repinique: 
									 { flare: [ 1, 5, 9, 13, 17, 21, 25 ],
										 rim: [ 31 ],
										 hand: [ 4, 8, 12, 16, 20, 24, 28, 30, 32 ],
										 beat: [ 29 ] },
									 snare:
									 { beat: [ 5, 13, 21, 29 ],
									   shadow: [1, 2, 3, 4, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18, 19, 20, 22, 23, 24, 25, 26, 27, 28, 30, 31, 32]},
									 tamborim: { beat: [ 5, 13, 15, 21, 27, 29 ] },
									 agogo: 
									 { low: [ 1, 7, 17, 23 ],
										 high: [ 4, 11, 13, 15, 20, 27, 29, 31 ] } } },
               { name: 'Break 1',
                 length: 4,
								 instruments:
								 { surdo: { beat: [1, 3, 9, 11, 15, 17, 19, 25,
                                   33, 35, 41, 43, 47, 49, 51, 57] },
									 agogo: 
									 { high: [5, 7, 13, 21, 23, 27, 31,
                            37, 39, 45, 53, 55, 59, 60, 61] } } }
             ]
           };
