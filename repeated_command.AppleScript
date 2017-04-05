-- Name this command <command name> /!Diddly!/. I go with "mandy /!Diddly!/"
-- Command structure is "<command name> <numerals for number of actions> <action>"
-- Eg: "mandy one zero zero right" moves the cursor right 100 times
-- "mandy right" moves cursor right by one
-- Current actions are: up, down, left, right, tab, backspace

to numTrans(txt)
    set all_numbers to every word in txt
    set full_num to ""
    set failed to false
    repeat with each_number in all_numbers
        set to_match to (each_number as text)
        set matched to false
        if ((to_match = "one") or (to_match = "won") or (to_match = "want")) then
            set full_num to full_num & "1"
            set matched to true
        end if
        if ((to_match = "two") or (to_match = "till") or (to_match = "to") or (to_match = "too") or (to_match = "true")) then
            set full_num to full_num & "2"
            set matched to true
        end if
        if (to_match = "three") then
            set full_num to full_num & "3"
            set matched to true
        end if
        if ((to_match = "for") or (to_match = "four") or (to_match = "full")) then
            set full_num to full_num & "4"
            set matched to true
        end if
        if ((to_match = "five") or (to_match = "I")) then
            set full_num to full_num & "5"
            set matched to true
        end if
        if ((to_match = "six") or (to_match = "sex")) then
            set full_num to full_num & "6"
            set matched to true
        end if
        if (to_match = "seven") then
            set full_num to full_num & "7"
            set matched to true
        end if
        if ((to_match = "eight") or (to_match = "ate")) then
            set full_num to full_num & "8"
            set matched to true
        end if
        if (to_match = "nine") then
            set full_num to full_num & "9"
            set matched to true
        end if
        if ((to_match = "zero") or (to_match = "Sierra") or (to_match = "Sara") or (to_match = "Sarah")) then
            set full_num to full_num & "0"
            set matched to true
        end if
        if matched = false then
            try
                set numnum to (each_number as number)
                set full_num to full_num & (each_number as text)
                set matched to true
            end try
        end if
        if matched = false then
            return {full_num,to_match}
        end if
    end repeat
    if (matched = true) then
        return {full_num, ""}
    end if
end numTrans

to repeatTheStuff(dictatedText)
    set return_val to numTrans(dictatedText)
    set num_repeat to item 1 of return_val
    if (num_repeat = "") then
        set num_repeat to "1"
    end if
    set the_keyword to item 2 of return_val
    if ((the_keyword = "") = False) then
        set matched_keyword to False
        if (the_keyword = "up") then
            set key_to_press_code to 126
            set matched_keyword to True
        end if
        if (the_keyword = "left") then
            set key_to_press_code to 123
            set matched_keyword to True
        end if
        if (the_keyword = "right") then
            set key_to_press_code to 124
            set matched_keyword to True
        end if
        if (the_keyword = "down") then
            set key_to_press_code to 125
            set matched_keyword to True
        end if
        if ((the_keyword = "delete") or (the_keyword = "backspace")) then
            set key_to_press_code to 51
            set matched_keyword to True
        end if
        if ((the_keyword = "tab") or (the_keyword = "tap")) then
            set key_to_press_code to 48
            set matched_keyword to True
        end if
        if (matched_keyword = True)
            repeat num_repeat times
                tell application "System Events" to key code key_to_press_code
            end repeat
        else
            say "unmatched keyword "&the_keyword 
        end if
    else
        say "missing keyword after "&num_repeat
    end if 
end repeatTheStuff

on srhandler(vars)
    set dictatedText to varDiddly of vars as text
    repeatTheStuff(dictatedText)
end srhandler
