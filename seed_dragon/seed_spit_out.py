#!/usr/bin/env python
from __future__ import print_function

vocab_spit_out = [
        "capital", "big",
        "Adrian","alpha",
        "Bravo", "brother",
         "Charlie",
         "David", "delta", "Dr",
         "elephant", "echo",
         "FoxTrot",
         "Golf", "Gary", "giraffe",
         "hotel",
         "idiot", "India",
         "Jordan", "Juliette",
         "kilo", "Kevin",
         "Lima", "lazy",
         "Mike",
         "never", "November",
         "Oscar",
         "people", "Papa",
         "Quentin",
         "Romeo",
         "Sierra", "stupid",
         "tango",
         "uniform", "under",
         "Victor", "Vanessa",
         "whiskey", "widow",
         "x-ray", "xerox",
         "yankee",
         "Zulu", "zebra", "Zumba",
         "hit",
         "Ali",
         "hot",
         "front",
         "back",
         "space",
         "open",
         "close",
         "continue",
         "therefore",
         "greater",
         "lesser",
         "star",
         "quote",
]

for i in range(1):
    for word1 in vocab_spit_out:
        for word2 in vocab_spit_out:
            for word3 in vocab_spit_out:
                print("Jack",word1,word2,word3+".", end=' ')
