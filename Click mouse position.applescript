(*
this is similar to "go to mouseposition" but it's clicks at that position, without moving the mouse there
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

on ClickPosition(PositionName, TheFile, ShutUp)
	set FullLine to (do shell script "/usr/local/bin/cliclick p")
	set FullLine to (FullLine as text)
	set BothCoordinates to (last word of FullLine as text)
	set OldCoordinates to SplitText(BothCoordinates, ",")
	set coordinates to FindAPosition(PositionName, TheFile, ShutUp)
	if ((coordinates = "") = false) then
		set TheCode to "/usr/local/bin/cliclick c:" & (item 1 of coordinates) & "," & (item 2 of coordinates)
		do shell script TheCode
		set TheCode to "/usr/local/bin/cliclick m:" & (item 1 of OldCoordinates) & "," & (item 2 of OldCoordinates)
		do shell script TheCode
	end if
end ClickPosition

on srhandler(vars)
	set PositionName to varPositionName of vars
	set ShutUp to true
	set TheFile to (((path to desktop folder) as text) & "Mousepositions")
	ClickPosition(PositionName, TheFile, ShutUp)
end srhandler