to coordFormat(pixel_number, txtDir)
	set matched to false
	if (txtDir as text) = "right" or (txtDir as text) = "write" then
		set coord to "+" & pixel_number & ",+0"
		set matched to true
	end if
	if (txtDir as text) = "left" then
		set coord to "-" & pixel_number & ",+0"
		set matched to true
	end if
	if (txtDir as text) = "up" or (txtDir as text) = " pop" or (txtDir as text) = "pup" then
		set coord to "+0,-" & pixel_number
		set matched to true
	end if
	if (txtDir as text) = "down" then
		set coord to "+0,+" & pixel_number
		set matched to true
	end if
	if matched = false then
		return ""
	else
		return coord
	end if
end coordFormat

to numTrans(txt)
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
			set TheAnswer to coordFormat(full_num, each_number)
			if (TheAnswer = "") = false then
				return TheAnswer
			end if
		end if
		if matched = false then
			say "could not match " & each_number
			set full_num to ""
		end if
	end repeat
	if failed = false then
		return full_num
	else
		return ""
	end if
end numTrans


on srhandler(vars)
	set DictatedText to varVariable of vars
	set coord to numTrans(DictatedText)
	if (coord = "") = false then
		set TheCode to "/usr/local/bin/cliclick m:" & coord
		do shell script TheCode
	end if
end srhandler