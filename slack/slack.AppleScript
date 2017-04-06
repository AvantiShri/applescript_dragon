-- Name this command <command name> /!Diddly!/. I go with "slack /!Diddly!/"
-- Command structure is "<command name> <action>"
-- Current actions are: 
-- -- navigate (opens  a window for navigating all channels and messages),
-- -- back to normal (closes the navigation window)
-- -- channel up (goes up one channel or conversation)
-- -- channel down

to slackCommands(dictatedText)
	if (dictatedText = "navigate") then
		tell application "System Events" to keystroke "k" using command down
		set matched_keyword to true
	end if
	if (dictatedText = "back to normal") then
		tell application "System Events" to key code 53
		set matched_keyword to true
	end if
	if (dictatedText = "move up") then
		tell application "System Events" to key code 126 using {control down, option down}
		set matched_keyword to true
	end if
	if (dictatedText = "move down") then
                tell application "System Events" to key code 125 using {control down, option down}
                set matched_keyword to true
        end if
	
	if (matched_keyword = true) then
		tell application "System Events" to key code key_to_press_code
	else
		say "unmatched keyword " & dictatedText
	end if
end slackCommands


on srhandler(vars)
	set dictatedText to varDiddly of vars as text
	slackCommands(dictatedText)
end srhandler