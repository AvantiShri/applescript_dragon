-- for some reason, when I use keystroke "0" in vim insert mode, it prints "p"
-- on the line above (and "1" print "q" on the line above - clearly some pattern,
-- likely to do with encoding. Anyway, I am hoping explicitly specifying set key_code tos
-- is the way out.

to numTrans(txt)
    set all_numbers to every word in txt
    set failed to false
    set shift_down to false
    -- keycodes: {one:18,two:19,three:20,four:21,five:23,six:22,seven:26,eight:28,nine:25,zero:29,positive:24}
    set keycodes_to_hit to {}
    repeat with each_number in all_numbers
        set to_match to (each_number as text)
        set matched to false
        if (failed = False) then
            if ((to_match = "one") or (to_match = "won") or (to_match = "want")) then
                set keycodes_to_hit to keycodes_to_hit & {18}
                set matched to true
            end if
            if ((to_match = "two") or (to_match = "till") or (to_match = "to") or (to_match = "too") or (to_match = "true")) then
                set keycodes_to_hit to keycodes_to_hit & {19}
                set matched to true
            end if
            if (to_match = "three") then
                set keycodes_to_hit to keycodes_to_hit & {20}
                set matched to true
            end if
            if ((to_match = "for") or (to_match = "four") or (to_match = "full")) then
                set keycodes_to_hit to keycodes_to_hit & {21}
                set matched to true
            end if
            if ((to_match = "five") or (to_match = "I")) then
                set keycodes_to_hit to keycodes_to_hit & {23}
                set matched to true
            end if
            if ((to_match = "six") or (to_match = "sex")) then
                set keycodes_to_hit to keycodes_to_hit & {22}
                set matched to true
            end if
            if (to_match = "seven") then
                set keycodes_to_hit to keycodes_to_hit & {26}
                set matched to true
            end if
            if ((to_match = "eight") or (to_match = "ate")) then
                set keycodes_to_hit to keycodes_to_hit & {28}
                set matched to true
            end if
            if (to_match = "nine") then
                set keycodes_to_hit to keycodes_to_hit & {25}
                set matched to true
            end if
            if ((to_match = "zero") or (to_match = "Sierra") or (to_match = "Sara") or (to_match = "Sarah")) then
                set keycodes_to_hit to keycodes_to_hit & {29}
                set matched to true
            end if
            if (to_match = "positive") then
                set keycodes_to_hit to keycodes_to_hit & {24}
                set shift_down to True
                set matched to true
            end if
            if matched = false then
                try
                    set numnum to (to_match as number)
                    repeat with number_character in the characters of to_match
                        set number_character to (number_character as text)
                        if (number_character="1") then                            
                            set keycodes_to_hit to keycodes_to_hit & {18}
                        end if
                        if (number_character="2") then
                            set keycodes_to_hit to keycodes_to_hit & {19}
                        end if
                        if (number_character="3") then
                            set keycodes_to_hit to keycodes_to_hit & {20}
                        end if
                        if (number_character="4") then
                            set keycodes_to_hit to keycodes_to_hit & {21}
                        end if
                        if (number_character="5") then
                            set keycodes_to_hit to keycodes_to_hit & {23}
                        end if
                        if number_character="6" then
                            set keycodes_to_hit to keycodes_to_hit & {22}
                        end if
                        if number_character="7" then
                            set keycodes_to_hit to keycodes_to_hit & {26}
                        end if
                        if number_character="8" then
                            set keycodes_to_hit to keycodes_to_hit & {28}
                        end if
                        if number_character="9" then
                            set keycodes_to_hit to keycodes_to_hit & {25}
                        end if
                        if number_character="0" then
                            set keycodes_to_hit to keycodes_to_hit & {29}
                        end if
                    end repeat
                    set matched to true
                end try
            end if
            if matched = false then
                say "could not match "&to_match
                set failed to True
            end if
        end if
    end repeat
    repeat with key_code in keycodes_to_hit
        if shift_down = True
            tell application "System Events" to (key code key_code using shift down)
        else
            tell application "System Events" to key code key_code
        end if
    end repeat
end numTrans

on srhandler(vars)
    set dictatedText to varDiddly of vars as text
    numTrans(dictatedText)
end srhandler
