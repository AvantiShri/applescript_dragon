#snake case
on srhandler(vars)
    set dictatedText to (varVariable of vars)
    set testing to do shell script "echo " & quoted form of dictatedText & " | sed \"s/ /_/g\""
    tell application "System Events" to keystroke testing
end srhandler
