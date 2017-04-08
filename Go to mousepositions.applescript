(*
Here are some commands that let you remember positions on the screen and have the mouse and jump directly to them.

To use them, say "create mouse position (name of position)" to create a new mouse position where your mouse currently is.

To go to a position say "go to mouse (name of position)" and the mouse should jump directly there.

these commands create a file on your desktop called mousepositions and saves your positions, along with their coordinates there. if you create a new position with a name that already exists, it will update the location of the position.

You can name the commands whatever you want, but I like those.

For this to work, you must first install cliclick, available here:
https://github.com/BlueM/cliclick

To install cliclick, go to the terminal and type

git clone https://github.com/BlueM/cliclick

Then type:

sudo make install

Some extra stuff:
at the bottom of the script, set ShutUp to false if you want feedback about what it isn't recognizing.
*)




on ReadFile(TheFile)
	set TheFile to TheFile as string
	return read file TheFile
end ReadFile

on FindAPosition(PositionName, TheFile, ShutUp)
	set AllPositions to ReadFile(TheFile)
	try
		repeat with EachPosition in (paragraphs of AllPositions)
			if ((words 1 through -3 of EachPosition as text) = (words of PositionName as text)) then
				return {(word -2 of EachPosition), (word -1 of EachPosition)}
			end if
		end repeat
	end try
	if (ShutUp = false) then
		say "unable to match " & (PositionName as text)
		return ""
	end if
end FindAPosition

on GoToPosition(PositionName, TheFile, ShutUp)
	set coordinates to FindAPosition(PositionName, TheFile, ShutUp)
	if ((coordinates = "") = false) then
		set TheCode to "/usr/local/bin/cliclick m:" & (item 1 of coordinates) & "," & (item 2 of coordinates)
		do shell script TheCode
	end if
end GoToPosition

on srhandler(vars)
	set PositionName to varDiddly of vars
	set ShutUp to false
	set TheFile to (((path to desktop folder) as text) & "Mousepositions")
	GoToPosition(PositionName, TheFile, ShutUp)
end srhandler