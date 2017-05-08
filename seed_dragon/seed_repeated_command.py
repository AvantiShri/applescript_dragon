#!/usr/bin/env python
from __future__ import print_function

numbers = [
         "one",
         "two",
         "three",
         "four",
         "five",
         "six",
         "seven",
         "eight",
         "nine",
         "zero"
]

commands = [
         "up",
         "down",
         "left",
         "right",
         "delete",
         "backspace",
         "tab",
         "reverse"]

for num1 in numbers:
    for num2 in numbers:
        for cmd in commands:
            print("John",num1,cmd+".", end=' ')
            print("John",num1,num2,cmd+".", end=' ')
