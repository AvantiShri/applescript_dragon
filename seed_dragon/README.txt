 Dragon has an option called "vocabulary training" under "improve recognition".
 By seeding this vocabulary training with documents generated according to
 the grammar of custom commands, you can greatly improve the performance of
 those custom commands. Here are scrips to generate the text of such documents.
 Note that any text generated would have to be pasted into Microsoft Word or
 something similar, because Dragon does not accept text files.

Example usage (note that my spit out command is called "jack"):

./seed_spit_out.py > seeding_document.txt

this will then populate seeding_document.txt with the desired text. You can then open  the document with some text editor and copy paste into world.
