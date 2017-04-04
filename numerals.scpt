to numTrans(txt)
    set all_numbers to every word in txt
    set full_num to ""
    set failed to False
    repeat with each_number in all_numbers
        set matched to False
        if (each_number as text) = "one"
            set full_num to full_num & "1"
            set matched to True
        end if
        if (each_number as text) = "won"
            set full_num to full_num & "1"
            set matched to True
        end if
        if (each_number as text) = "want"
            set full_num to full_num & "1"
            set matched to True
        end if
        if (each_number as text) = "two"
            set full_num to full_num & "2"
            set matched to True
        end if
        if (each_number as text) = "to"
            set full_num to full_num & "2"
            set matched to True
        end if
        if (each_number as text) = "too"
            set full_num to full_num & "2"
            set matched to True
        end if
        if (each_number as text) = "true"
            set full_num to full_num & "2"
            set matched to True
        end if
        if (each_number as text) = "till"
            set full_num to full_num & "2"
            set matched to True
        end if
        if (each_number as text) = "three"
            set full_num to full_num & "3"
            set matched to True
        end if
        if (each_number as text) = "for"
            set full_num to full_num & "4"
            set matched to True
        end if
        if (each_number as text) = "four"
            set full_num to full_num & "4"
            set matched to True
        end if
        if (each_number as text) = "full"
            set full_num to full_num & "4"
            set matched to True
        end if
        if (each_number as text) = "five"
            set full_num to full_num & "5"
            set matched to True
        end if
        if (each_number as text) = "I"
            set full_num to full_num & "5"
            set matched to True
        end if
        if (each_number as text) = "six"
            set full_num to full_num & "6"
            set matched to True
        end if
        if (each_number as text) = "sex"
            set full_num to full_num & "6"
            set matched to True
        end if
        if (each_number as text) = "seven"
            set full_num to full_num & "7"
            set matched to True
        end if
        if (each_number as text) = "eight"
            set full_num to full_num & "8"
            set matched to True
        end if
        if (each_number as text) = "ate"
            set full_num to full_num & "8"
            set matched to True
        end if
        if (each_number as text) = "nine"
            set full_num to full_num & "9"
            set matched to True
        end if
        if (each_number as text) = "zero"
            set full_num to full_num & "0"
            set matched to true
        end if
        if (each_number as text) = "sierra"
            set full_num to full_num & "0"
            set matched to true
        end if
        if (each_number as text) = "sara"
            set full_num to full_num & "0"
            set matched to true
        end if
        if (each_number as text) = "sarah"
            set full_num to full_num & "0"
            set failed to True
        end if
        if matched = False
            try
                set numnum to (each_number as number)
                set full_num to full_num & (each_number as text)
                set matched to True
            end try
        end if
        if matched = False
            say "could not match " & each_number
            set full_num to ""
        end if
    end repeat
    if failed = False
        return full_num
    else
        return ""
    end if
end numTrans

on srhandler(vars)
    set dictatedText to varDiddly of vars
    set full_num_string to numTrans(dictatedText)
    if (full_num_string = "") = False
        tell application "System Events" to keystroke full_num_string
    end if
end srhandler
