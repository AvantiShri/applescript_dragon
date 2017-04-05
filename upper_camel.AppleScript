to MakeTheUpperCamel(txt)
    set txt to txt & " "
    set allWords to every word of txt
    set allCaps to every character of "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    set camelString to ""
    repeat with eachWord in allWords
        set char01 to character 1 of (eachWord as text)
        if length of eachWord > 1 then
            set remainder to characters 2 thru -1 of (eachWord as text)
        else
            set remainder to ""
        end if
        repeat with eachChar in allCaps
            if char01 = (eachChar as text) then
                set camelString to camelString & (eachChar as text) & (remainder as text)
                exit repeat
            end if
        end repeat
    end repeat
    return camelString
end MakeTheUpperCamel

on srhandler(vars)
    set dictatedText to varDiddly of vars
    set camel to my MakeTheUpperCamel(dictatedText)
    tell application "System Events" to keystroke camel
end srhandler
