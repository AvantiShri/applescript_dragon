to letterTrans(txt)
    set all_letters to every word in txt
    set full_word to ""
    set failed to False
    set caps_on to False
    repeat with each_letter in all_letters
        set matched to False
        set match_me to (each_letter as text)
        if failed = False
            if ((match_me = "big") or (match_me = "pig") or (match_me = "upper"))
                set matched to True
                set caps_on to True
            else
                if ((match_me = "alpha") or (match_me = "Alfa") or (match_me = "Helfer") or (match_me = "offer"))
                    set matched to true
                    if caps_on = false
                        set append_me to "a"
                    else
                        set append_me to "A"
                    end if
                end if
                if ((match_me = "bravo") or (match_me = "brother") or (match_me = "beta") or (match_me = "data"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "b"
                    else
                        set append_me to "B"
                    end if
                end if
                if ((match_me = "Charlie") or (match_me = "Charlie") or (match_me = "surely"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "c"
                    else
                        set append_me to "C"
                    end if
                end if
                if ((match_me = "david") or (match_me = "avid") or (match_me = "delta"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "d"
                    else
                        set append_me to "D"
                    end if
                end if
                if (match_me = "echo")
                    set matched to true
                    if (caps_on = false)
                        set append_me to "e"
                    else
                        set append_me to "E"
                    end if
                end if
                if (match_me = "Foxtrot")
                    set matched to true
                    if (caps_on = false)
                        set append_me to "f"
                    else
                        set append_me to "F"
                    end if
                end if
                if ((match_me = "Golf") or (match_me = "Gary"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "g"
                    else
                        set append_me to "G"
                    end if
                end if
                if ((match_me = "hotel"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "h"
                    else
                        set append_me to "H"
                    end if
                end if
                if ((match_me = "India") or (match_me = "Inca") or (match_me = "inker"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "i"
                    else
                        set append_me to "I"
                    end if
                end if
                if ((match_me = "jackal") or (match_me = "Jordan") or (match_me = "Juliette"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "j"
                    else
                        set append_me to "J"
                    end if
                end if
                if ((match_me = "kilo") or (match_me = "kappa") or (match_me = "Kevin"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "k"
                    else
                        set append_me to "K"
                    end if
                end if
                if ((match_me = "Lima") or (match_me = "llama"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "l"
                    else
                        set append_me to "L"
                    end if
                end if
                if ((match_me = "Mike") or (match_me = "Mandy"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "m"
                    else
                        set append_me to "M"
                    end if
                end if
                if ((match_me = "November") or (match_me = "never"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "n"
                    else
                        set append_me to "N"
                    end if
                end if
                if ((match_me = "Oscar") or (match_me = "omega"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "o"
                    else
                        set append_me to "O"
                    end if
                end if
                if ((match_me = "papa") or (match_me = "Poppa") or (match_me = "proper") or (match_me = "people") or (match_me = "police"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "p"
                    else
                        set append_me to "P"
                    end if
                end if
                if ((match_me = "Quebec") or (match_me = "Q") or (match_me = "q") or (match_me = "quiet") or (match_me = "client") or (match_me = "queue") or (match_me = "Quentin"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "q"
                    else
                        set append_me to "Q"
                    end if
                end if
                if ((match_me = "Romeo"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "r"
                    else
                        set append_me to "R"
                    end if
                end if
                if ((match_me = "Sierra") or (match_me = "Sarah") or (match_me = "Sara"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "s"
                    else
                        set append_me to "S"
                    end if
                end if
                if ((match_me = "tango") or (match_me = "tender"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "t"
                    else
                        set append_me to "T"
                    end if
                end if
                if ((match_me = "uniform") or (match_me = "under") or (match_me = "undo"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "u"
                    else
                        set append_me to "U"
                    end if
                end if
                if ((match_me = "Victor") or (match_me = "Vanessa"))  
                    set matched to true
                    if (caps_on = false)
                        set append_me to "v"
                    else
                        set append_me to "V"
                    end if
                end if
                if ((match_me = "whiskey") or (match_me = "wallet") or (match_me = "w") or (match_me = "W"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "w"
                    else
                        set append_me to "W"
                    end if
                end if
                if ((match_me = "x-ray"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "x"
                    else
                        set append_me to "X"
                    end if
                end if
                if ((match_me = "yankee"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "y"
                    else
                        set append_me to "Y"
                    end if
                end if
                if ((match_me = "Zulu") or (match_me = "zebra") or (match_me = "Zumba"))
                    set matched to true
                    if (caps_on = false)
                        set append_me to "z"
                    else
                        set append_me to "Z"
                    end if
                end if
                if ((match_me = "hit") or (match_me = "it") or (match_me = "his"))
                    set matched to true
                    set append_me to "-"
                end if
                if ((match_me = "alley") or (match_me = "Ali"))
                    set matched to true
                    set append_me to "_"
                end if
                if ((match_me = "hot") or (match_me = "heart") or (match_me = "what"))
                    set matched to true
                    set append_me to "."
                end if
                if ((match_me = "hotpot") or (match_me = "hopper"))
                    set matched to true
                    set append_me to ".."
                end if
                if ((match_me = "front"))
                    set matched to true
                    set append_me to "/"
                end if
                if ((match_me = "back") or (match_me = "that"))
                    set matched to true
                    set append_me to "\\"
                end if
                if ((match_me = "space") or (match_me = "pace") or (match_me = "place") or (match_me = "peace"))
                    set matched to true
                    set append_me to " "
                end if
                if ((match_me = "open"))
                    set matched to true
                    set append_me to "("
                end if
                if ((match_me = "close"))
                    set matched to true
                    set append_me to ")"
                end if
                if ((match_me = "equal") or (match_me = "eco"))
                    set matched to true
                    set append_me to "="
                end if
                if ((match_me = "continue"))
                    set matched to true
                    set append_me to ","
                end if
                if (matched = True)
                    set full_word to (full_word & append_me)
                end if
                set caps_on to False
            end if
            if matched = False
                say "could not match "
                say each_letter
                set failed to True
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
