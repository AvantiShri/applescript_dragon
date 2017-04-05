-- for some reason, when I use keystroke "0" in vim insert mode, it prints "p"
-- on the line above (and "1" print "q" on the line above - clearly some pattern,
-- likely to do with encoding. Anyway, I am hoping explicitly specifying set key_code tos
-- is the way out.

to numTrans(txt)
    set all_numbers to every word in txt
    set failed to false
    repeat with each_number in all_numbers
        set to_match to (each_number as text)
        set matched to false
        if (failed = False) then
            if ((to_match = "one") or (to_match = "won") or (to_match = "want")) then
                set key_code to 18
                set matched to true
            end if
            if ((to_match = "two") or (to_match = "till") or (to_match = "to") or (to_match = "too") or (to_match = "true")) then
                set key_code to 19
                set matched to true
            end if
            if (to_match = "three") then
                set key_code to 20
                set matched to true
            end if
            if ((to_match = "for") or (to_match = "four") or (to_match = "full")) then
                set key_code to 21
                set matched to true
            end if
            if ((to_match = "five") or (to_match = "I")) then
                set key_code to 23
                set matched to true
            end if
            if ((to_match = "six") or (to_match = "sex")) then
                set key_code to 22
                set matched to true
            end if
            if (to_match = "seven") then
                set key_code to 26
                set matched to true
            end if
            if ((to_match = "eight") or (to_match = "ate")) then
                set key_code to 28
                set matched to true
            end if
            if (to_match = "nine") then
                set key_code to 25
                set matched to true
            end if
            if ((to_match = "zero") or (to_match = "Sierra") or (to_match = "Sara") or (to_match = "Sarah")) then
                set key_code to 29
                set matched to true
            end if
            if matched = false then
                say "could not match "&to_match
                set failed to True
            else
                tell application "System Events" to key code key_code
            end if
        end if
    end repeat
end numTrans

on srhandler(vars)
    set dictatedText to varDiddly of vars as text
    numTrans(dictatedText)
end srhandler
