-- Command name is "spit out /!Diddly!/"
-- This is to spare you the annoyingness of switching in and out of spelling mode
-- "spit out alpha upper brother delta" gives "aBd"
-- supports various punctuations.
-- "hot" is . (originally 'dot' but 'hot' was easier). 
-- "hotpot" is ..
-- "hit" is -
-- "alley" is _
-- "open" is (
-- "close" is )
-- "continue" is ,
-- "equal" is =
-- "therefore" is :
-- "positive" is +
-- "greater" is >
-- "lesser" is <

to letterTrans(txt)
    set all_letters to every word in txt
    set full_word to ""
    set failed to false
    set caps_on to false
    repeat with each_letter in all_letters
        set matched to false
        set match_me to (each_letter as text)
        if failed = false then
            if ((match_me = "big") or (match_me = "pig") or (match_me = "upper")) then
                set matched to true
                set caps_on to true
            else
                if ((match_me = "alpha") or (match_me = "Alfa") or (match_me = "Helfer") or (match_me = "offer")) then
                    set matched to true
                    if caps_on = false then
                        set append_me to "a"
                    else
                        set append_me to "A"
                    end if
                end if
                if ((match_me = "bravo") or (match_me = "brother") or (match_me = "beta") or (match_me = "data")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "b"
                    else
                        set append_me to "B"
                    end if
                end if
                if ((match_me = "Charlie") or (match_me = "Charlie") or (match_me = "surely")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "c"
                    else
                        set append_me to "C"
                    end if
                end if
                if ((match_me = "david") or (match_me = "avid") or (match_me = "delta")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "d"
                    else
                        set append_me to "D"
                    end if
                end if
                if (match_me = "echo" or match_me = "elephant") then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "e"
                    else
                        set append_me to "E"
                    end if
                end if
                if (match_me = "Foxtrot") then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "f"
                    else
                        set append_me to "F"
                    end if
                end if
                if ((match_me = "Golf") or (match_me = "Gary")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "g"
                    else
                        set append_me to "G"
                    end if
                end if
                if ((match_me = "hotel")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "h"
                    else
                        set append_me to "H"
                    end if
                end if
                if ((match_me = "India") or (match_me = "Inca") or (match_me = "inker")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "i"
                    else
                        set append_me to "I"
                    end if
                end if
                if ((match_me = "jackal") or (match_me = "Jordan") or (match_me = "Juliette")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "j"
                    else
                        set append_me to "J"
                    end if
                end if
                if ((match_me = "kilo") or (match_me = "kappa") or (match_me = "Kevin")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "k"
                    else
                        set append_me to "K"
                    end if
                end if
                if ((match_me = "Lima") or (match_me = "llama")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "l"
                    else
                        set append_me to "L"
                    end if
                end if
                if ((match_me = "Mike") or (match_me = "Mandy")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "m"
                    else
                        set append_me to "M"
                    end if
                end if
                if ((match_me = "November") or (match_me = "never")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "n"
                    else
                        set append_me to "N"
                    end if
                end if
                if ((match_me = "Oscar") or (match_me = "omega")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "o"
                    else
                        set append_me to "O"
                    end if
                end if
                if ((match_me = "papa") or (match_me = "Poppa") or (match_me = "proper") or (match_me = "people") or (match_me = "police")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "p"
                    else
                        set append_me to "P"
                    end if
                end if
                if ((match_me = "Quebec") or (match_me = "Q") or (match_me = "q") or (match_me = "quiet") or (match_me = "client") or (match_me = "queue") or (match_me = "Quentin")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "q"
                    else
                        set append_me to "Q"
                    end if
                end if
                if ((match_me = "Romeo")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "r"
                    else
                        set append_me to "R"
                    end if
                end if
                if ((match_me = "Sierra") or (match_me = "Sarah") or (match_me = "Sara")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "s"
                    else
                        set append_me to "S"
                    end if
                end if
                if ((match_me = "tango") or (match_me = "tender")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "t"
                    else
                        set append_me to "T"
                    end if
                end if
                if ((match_me = "uniform") or (match_me = "under") or (match_me = "undo")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "u"
                    else
                        set append_me to "U"
                    end if
                end if
                if ((match_me = "Victor") or (match_me = "Vanessa")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "v"
                    else
                        set append_me to "V"
                    end if
                end if
                if ((match_me = "whiskey") or (match_me = "wallet") or (match_me = "w") or (match_me = "W")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "w"
                    else
                        set append_me to "W"
                    end if
                end if
                if ((match_me = "x-ray") or (match_me = "x") or (match_me = "ex") or (match_me = "xerox")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "x"
                    else
                        set append_me to "X"
                    end if
                end if
                if ((match_me = "yankee")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "y"
                    else
                        set append_me to "Y"
                    end if
                end if
                if ((match_me = "Zulu") or (match_me = "zebra") or (match_me = "Zumba")) then
                    set matched to true
                    if (caps_on = false) then
                        set append_me to "z"
                    else
                        set append_me to "Z"
                    end if
                end if
                if ((match_me = "hit") or (match_me = "it") or (match_me = "his")) then
                    set matched to true
                    set append_me to "-"
                end if
                if ((match_me = "alley") or (match_me = "Ali") or (match_me = "ally")) then
                    set matched to true
                    set append_me to "_"
                end if
                if ((match_me = "hot") or (match_me = "heart") or (match_me = "what")) then
                    set matched to true
                    set append_me to "."
                end if
                if ((match_me = "hotpot") or (match_me = "hopper")) then
                    set matched to true
                    set append_me to ".."
                end if
                if ((match_me = "front")) then
                    set matched to true
                    set append_me to "/"
                end if
                if ((match_me = "back") or (match_me = "that")) then
                    set matched to true
                    set append_me to "\\"
                end if
                if ((match_me = "space") or (match_me = "pace") or (match_me = "place") or (match_me = "peace")) then
                    set matched to true
                    set append_me to " "
                end if
                if ((match_me = "open")) then
                    set matched to true
                    set append_me to "("
                end if
                if ((match_me = "close")) then
                    set matched to true
                    set append_me to ")"
                end if
                if ((match_me = "equal")) then
                    set matched to true
                    set append_me to "="
                end if
                if ((match_me = "continue")) then
                    set matched to true
                    set append_me to ","
                end if
                if ((match_me = "therefore")) then
                    set matched to true
                    set append_me to ":"
                end if
                if ((match_me = "positive")) then
                    set matched to true
                    set append_me to "+"
                end if
                if ((match_me = "greater")) then
                    set matched to true
                    set append_me to ">"
                end if
                if ((match_me = "lesser")) then
                    set matched to true
                    set append_me to "<"
                end if
                if (matched = true) then
                    set full_word to (full_word & append_me)
                end if
                set caps_on to false
            end if
            if matched = false then
                say "could not match " & each_letter
                set failed to true
            end if
        end if
    end repeat
    return full_word
end letterTrans

on srhandler(vars)
    set dictatedText to varDiddly of vars
    set full_word to letterTrans(dictatedText)
    tell application "System Events" to keystroke full_word
end srhandler

