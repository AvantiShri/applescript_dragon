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





on AddPositionToFile(Position, TargetFile)
	try
		set repeated to false
		set TargetFile to TargetFile as string
		set OpenFile to open for access file TargetFile with write permission
		try
			set AllPositions to ReadFile(TargetFile)
		on error
			set LineToAdd to "" & name of Position & " " & x of Position & " " & y of Position
			write LineToAdd to OpenFile starting at 0
			close access the OpenFile
			return true
		end try
		set FileNew to ""
		repeat with PositionNumber from 1 to (count of paragraphs of AllPositions)
			set CurrentLine to item PositionNumber of paragraphs of AllPositions
			if ((count of CurrentLine) > 2) then
				set LeftAside to (words 1 through -3 of CurrentLine)
				set RightAside to (words of name of Position)
				if (LeftAside = RightAside) then
					set repeated to true
					if (PositionNumber = 1) then
						set FileNew to FileNew & name of Position & " " & x of Position & " " & y of Position
					else
						set FileNew to FileNew & "
" & name of Position & " " & x of Position & " " & y of Position
					end if
				else
					set AnnoyingDragon to ""
					if (PositionNumber > 1) then
						set AnnoyingDragon to AnnoyingDragon & "
"
					end if
					repeat with WordedNumber from 1 to (count of words of CurrentLine)
						if (WordedNumber > 1) then
							set AnnoyingDragon to AnnoyingDragon & " "
						end if
						set EachWord to word WordedNumber of CurrentLine
						set AnnoyingDragon to AnnoyingDragon & EachWord
					end repeat
					set FileNew to FileNew & AnnoyingDragon
				end if
			end if
		end repeat
		if (repeated = false) then
			set LineToAdd to "
" & name of Position & " " & x of Position & " " & y of Position
			write LineToAdd to OpenFile starting at eof
			close access the OpenFile
			return true
		else
			set eof OpenFile to 0
			write FileNew to OpenFile starting at 0
			close access the OpenFile
			return true
		end if
	on error
		try
			close access the TargetFile
		end try
		return false
	end try
end AddPositionToFile

on ReadFile(TheFile)
	set TheFile to TheFile as string
	return read file TheFile
end ReadFile

on SplitText(TheText)
	set LeftSide to ""
	set RightSide to ""
	set halfway to false
	repeat with EachCharacter in (characters of TheText)
		if ((EachCharacter as text) = ",") = false then
			if (halfway = false) then
				set LeftSide to (LeftSide & EachCharacter)
			else
				set RightSide to (RightSide & EachCharacter)
			end if
		else
			set halfway to true
		end if
	end repeat
	return {LeftSide, RightSide}
end SplitText

on CreateMousePosition(PositionName, TargetFile)
	set FullLine to (do shell script "/usr/local/bin/cliclick p")
	set FullLine to (FullLine as text)
	set BothCoordinates to (last word of FullLine as text)
	set coordinates to SplitText(BothCoordinates, ",")
	set Position to {name:PositionName, x:(item 1 of coordinates), y:(item 2 of coordinates)}
	AddPositionToFile(Position, TargetFile)
end CreateMousePosition

on srhandler(vars)
	set PositionName to varDiddly of vars
	set PositionName to (PositionName as text)
	set TargetFile to (((path to desktop folder) as text) & "Mousepositions")
	CreateMousePosition(PositionName, TargetFile)
end srhandler