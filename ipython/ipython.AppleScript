-- Name this command <command name> /!Diddly!/. I go with "super /!Diddly!/"
-- Command structure is "<command name> <action>"
-- Current actions are: 
-- -- run (it runs the selected cell), 
-- -- new ( creates a new cell), 
-- -- markdown (changes cell to mark down), 
-- -- raw (changes cell to raw), 
-- -- code (changes cell to code), 
-- -- up (goes up one cell), 
-- -- down (goes down one cell), 
-- -- cut (cuts selected cell), 
-- -- copy (copies selected cell), 
-- -- appear (pastes cell that was copied/cut), 
-- -- delete (deletes selected cell), 
-- -- enter (allows you to enter into the selected cell to edit it), 
-- -- merge (merges selected cell with next cell), 
-- -- save (saves notebook)

to ipythonCommands(dictatedText)
	if (dictatedText = "run") then
		tell application "System Events" to key code 53
		tell application "System Events" to key code 36 using shift down
		set matched_keyword to true
	end if
	if (dictatedText = "new") then
		tell application "System Events" to key code 53
		tell application "System Events" to keystroke "b"
		set matched_keyword to true
	end if
	if (dictatedText = "markdown") then
		tell application "System Events" to key code 53
		tell application "System Events" to keystroke "m"
		set matched_keyword to true
	end if
	if (dictatedText = "raw") then
		tell application "System Events" to key code 53
		tell application "System Events" to keystroke "r"
		set matched_keyword to true
	end if
	if (dictatedText = "code") then
		tell application "System Events" to key code 53
		tell application "System Events" to keystroke "y"
		set matched_keyword to true
	end if
	if (dictatedText = "up") then
		tell application "System Events" to key code 53
		tell application "System Events" to key code 126
		set matched_keyword to true
	end if
	if (dictatedText = "down") then
		tell application "System Events" to key code 53
		tell application "System Events" to key code 125
		set matched_keyword to true
	end if
	if (dictatedText = "cut") then
		tell application "System Events" to key code 53
		tell application "System Events" to keystroke "x"
		set matched_keyword to true
	end if
	if (dictatedText = "copy") then
		tell application "System Events" to key code 53
		tell application "System Events" to keystroke "c"
		set matched_keyword to true
	end if
	if (dictatedText = "appear") then
		tell application "System Events" to key code 53
		tell application "System Events" to keystroke "v" using shift down
		set matched_keyword to true
	end if
	if (dictatedText = "delete") then
		tell application "System Events" to key code 53
		tell application "System Events" to keystroke "d"
		delay 5.0E-4
		tell application "System Events" to keystroke "d"
		set matched_keyword to true
	end if
	if (dictatedText = "enter") then
		tell application "System Events" to key code 53
		tell application "System Events" to key code 36
		set matched_keyword to true
	end if
	if (dictatedText = "merge") then
		tell application "System Events" to key code 53
		tell application "System Events" to keystroke "m" using shift down
		set matched_keyword to true
	end if
	if (dictatedText = "save") then
		tell application "System Events" to key code 53
		tell application "System Events" to keystroke "s"
		set matched_keyword to true
	end if
	if (matched_keyword = true) then
		tell application "System Events" to key code key_to_press_code
	else
		say "unmatched keyword " & dictatedText
	end if
end ipythonCommands


on srhandler(vars)
	set dictatedText to varDiddly of vars as text
	ipythonCommands(dictatedText)
end srhandler
