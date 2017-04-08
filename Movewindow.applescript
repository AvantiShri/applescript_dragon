to CoordinateChange(coordinates, pixel_number, txtDir)
	set buffer to 10
	set matched to false
	if (txtDir as text) = "right" or (txtDir as text) = "write" then
		set coordinates to ChangeXCoordinate(coordinates, pixel_number, buffer)
		return coordinates
	end if
	if (txtDir as text) = "left" then
		set coordinates to ChangeXCoordinate(coordinates, -pixel_number, buffer)
		return coordinates
	end if
	if (txtDir as text) = "up" or (txtDir as text) = " pop" or (txtDir as text) = "pup" then
		set coordinates to ChangeZCoordinate(coordinates, -pixel_number, buffer)
		return coordinates
	end if
	if (txtDir as text) = "down" then
		set coordinates to ChangeZCoordinate(coordinates, pixel_number, buffer)
		return coordinates
	end if
	return ""
end CoordinateChange


on ChangeXCoordinate(coordinates, distance, buffer)
	set X1 to item 1 of coordinates
	set X2 to item 3 of coordinates
	tell application "Finder" to set dimensions to the bounds of window of desktop
	set ScreenWide to item 3 of dimensions
	set Wide to X2 - X1
	if (X2 + distance < buffer) then
		set item 3 of coordinates to buffer
		set item 1 of coordinates to buffer - Wide
	else if (X1 + distance > ScreenWide - buffer) then
		set item 3 of coordinates to ScreenWide - buffer + Wide
		set item 1 of coordinates to ScreenWide - buffer
	else
		set item 3 of coordinates to X2 + distance
		set item 1 of coordinates to X1 + distance
	end if
	return coordinates
end ChangeXCoordinate

on ChangeZCoordinate(coordinates, distance, buffer)
	set Z1 to item 2 of coordinates
	set Z2 to item 4 of coordinates
	tell application "Finder" to set dimensions to the bounds of window of desktop
	set ScreenHeight to item 4 of dimensions
	set Height to Z2 - Z1
	if (Z2 + distance < buffer) then
		set item 4 of coordinates to buffer
		set item 2 of coordinates to buffer - Height
	else if (Z1 + distance > ScreenHeight - buffer) then
		set item 2 of coordinates to ScreenHeight - buffer
		set item 4 of coordinates to ScreenHeight - buffer + Height
	else
		set item 2 of coordinates to Z1 + distance
		set item 4 of coordinates to Z2 + distance
	end if
	return coordinates
end ChangeZCoordinate


to GetTheFinalCoordinates(coordinates, txt)
	set all_numbers to every word in txt
	set full_num to ""
	set failed to false
	repeat with each_number in all_numbers
		set matched to false
		if (each_number as text) = "one" then
			set full_num to full_num & "1"
			set matched to true
		end if
		if (each_number as text) = "won" then
			set full_num to full_num & "1"
			set matched to true
		end if
		if (each_number as text) = "want" then
			set full_num to full_num & "1"
			set matched to true
		end if
		if (each_number as text) = "two" then
			set full_num to full_num & "2"
			set matched to true
		end if
		if (each_number as text) = "to" then
			set full_num to full_num & "2"
			set matched to true
		end if
		if (each_number as text) = "too" then
			set full_num to full_num & "2"
			set matched to true
		end if
		if (each_number as text) = "true" then
			set full_num to full_num & "2"
			set matched to true
		end if
		if (each_number as text) = "till" then
			set full_num to full_num & "2"
			set matched to true
		end if
		if (each_number as text) = "three" then
			set full_num to full_num & "3"
			set matched to true
		end if
		if (each_number as text) = "for" then
			set full_num to full_num & "4"
			set matched to true
		end if
		if (each_number as text) = "four" then
			set full_num to full_num & "4"
			set matched to true
		end if
		if (each_number as text) = "full" then
			set full_num to full_num & "4"
			set matched to true
		end if
		if (each_number as text) = "five" then
			set full_num to full_num & "5"
			set matched to true
		end if
		if (each_number as text) = "I" then
			set full_num to full_num & "5"
			set matched to true
		end if
		if (each_number as text) = "six" then
			set full_num to full_num & "6"
			set matched to true
		end if
		if (each_number as text) = "sex" then
			set full_num to full_num & "6"
			set matched to true
		end if
		if (each_number as text) = "seven" then
			set full_num to full_num & "7"
			set matched to true
		end if
		if (each_number as text) = "eight" then
			set full_num to full_num & "8"
			set matched to true
		end if
		if (each_number as text) = "ate" then
			set full_num to full_num & "8"
			set matched to true
		end if
		if (each_number as text) = "nine" then
			set full_num to full_num & "9"
			set matched to true
		end if
		if (each_number as text) = "zero" then
			set full_num to full_num & "0"
			set matched to true
		end if
		if (each_number as text) = "sierra" then
			set full_num to full_num & "0"
			set matched to true
		end if
		if (each_number as text) = "sara" then
			set full_num to full_num & "0"
			set matched to true
		end if
		if (each_number as text) = "sarah" then
			set full_num to full_num & "0"
			set failed to true
		end if
		if matched = false then
			try
				set numnum to (each_number as number)
				set full_num to full_num & (each_number as text)
				set matched to true
			end try
		end if
		if matched = false then
			set TheAnswer to CoordinateChange(coordinates, full_num, each_number)
			if (TheAnswer = "") = false then
				return TheAnswer
			end if
		end if
		if matched = false then
			-- say "could not match " & each_number
			set full_num to ""
		end if
	end repeat
	if failed = false then
		return full_num
	else
		return ""
	end if
end GetTheFinalCoordinates






on MoveWindow(DictatedText)
	tell application "System Events"
		set FrontApplication to the name of first process whose frontmost is true
	end tell
	tell application FrontApplication
		activate
		reopen
		set coordinates to the bounds of the first window
	end tell
	set FinalCoordinates to GetTheFinalCoordinates(coordinates, DictatedText)
	tell application FrontApplication
		set the bounds of the front window to FinalCoordinates
	end tell
end MoveWindow

on srhandler(vars)
	set DictatedText to varVariable of vars
	MoveWindow(DictatedText)
end srhandler