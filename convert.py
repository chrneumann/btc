"""
Converts parts of RoR .xls notes (converted to .csv) to yaml compatible syntax.
"""

import csv
import sys

first_column = 3
row_numbers_column = 1

voice_map = {
    'fl': 'flare',
    'hd': 'hand',
    '.': 'shadow',
    'h': 'high',
    'l': 'low',
    'sil': 'silent',
    '0': 'dampened',
    'x': 'beat',
    }

reader = csv.reader(sys.stdin, delimiter=',', quotechar='"')
count = 1
voices = {}
for row in reader:
    if row and row[0] == '':
        continue
    if not row[row_numbers_column].isdigit():
        count = 1
        voices = {}
        print "      {0}:".format(row[0].lower())
    for column in row[first_column:]:
        if column:
            if not voices.has_key(column):
                voices[column] = []
            voices[column].append(count)
        count += 1
    for key in voices:
        voice = key in voice_map and voice_map[key] or key
        print "        {0}: {1}".format(voice, str(voices[key]))
        


    