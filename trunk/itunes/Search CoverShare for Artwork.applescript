(*
iTunes script for retrieving cover art from http://www.covershare.com
Please support covershare, this script is useless without your help for covershare.
Copyright (C) 2008 Pruet Boonma <pruetboonma@gmail.com>
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
     * Redistributions of source code must retain the above copyright
       notice, this list of conditions and the following disclaimer.
     * Redistributions in binary form must reproduce the above copyright
       notice, this list of conditions and the following disclaimer in the
       documentation and/or other materials provided with the distribution.
     * Neither the name of the <organization> nor the
       names of its contributors may be used to endorse or promote products
       derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY Pruet Boonma ''AS IS'' AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL Pruet Boonma  BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*)
property baseURLalbum : "http://www.covershare.com/api/search.php?album="
property baseURLartist : "http://www.covershare.com/api/search.php?artist="
property fileCache : {}
property albCache : {}
property notFound : {}
property previousSelected : ""
property img_path_array : {}
property album_array : {}
property artist_array : {}


tell application "iTunes"
	-- get a reference to playing or selected track
	if selection is {} then
		
		display dialog "Nothing is playing or selected." buttons {"Cancel"} Â
			default button 1 with icon 0
	else if player state is stopped then
		display dialog "This script tries to retrieve cover art from the selected song from covershare.com, it might take sometime, so please be patient.  When the script finishes, it will show a dialog saying so. Click OK to start, cancel to ... cancel."
		set sel to selection
		
		repeat with a_track in sel
			my processTrack(a_track)
		end repeat
		my cleanUp()
		display dialog "Finished" buttons "OK"
	end if
end tell

on cleanUp()
	tell application "Image Events"
		launch
		repeat with songPath in fileCache
			delete file songPath
			delete file (songPath & ".pict")
		end repeat
	end tell
end cleanUp



on processTrack(theTrack)
	tell application "iTunes"
		if ((offset of "audio file" in (theTrack's kind as text)) = 0) then
			return
		end if
		tell theTrack
			set alb to my fixChars(album)
			set orig_alb to album
			set alt to my fixChars(artist)
			set orig_alt to artist
		end tell
		if alb ­ "" then
			set theURL to (baseURLalbum & (my replace_chars((alb), " ", "+"))) as text
		else
			set theURL to (baseURLartist & (my replace_chars((alt), " ", "+"))) as text
		end if
		
		my retrieveSongInfo(theURL)
		
		if (length of img_path_array) = 0 then
			if alb is not in notFound then
				display dialog ("Cannot find any artwork with album name \"" & orig_alb & "\" and artist name \"" & orig_alt & "\"")
				set the end of notFound to alb
			end if
		else
			if (length of img_path_array) > 1 then
				if alb is not in albCache then
					set the end of album_array to "None of above"
					set selected to choose from list album_array with prompt ("Found multiple artworks matched  album name \"" & orig_alb & "\" and artist name \"" & alt & "\", please pick the one you want from the list below, then click OK") without multiple selections allowed
					set the end of albCache to alb
					set previousSelected to selected
				else
					set selected to previousSelected
				end if
				if selected as text is equal to "None of above" or selected is false then
					set theURL to ""
				else
					set idx to (my getListItemIndex(album_array, selected))
					set theURL to (item (idx + 0) of img_path_array)
				end if
			else
				set previousSelected to ""
				set theURL to (item 1 of img_path_array)
			end if
			
			if theURL is not "" then
				set AppleScript's text item delimiters to "/"
				set names to every text item of theURL
				set AppleScript's text item delimiters to {""}
				set fileName to item (count of names) of names
				
				try
					set fileName to "/tmp/" & fileName
					if fileName is not in fileCache then -- if the file is not already in fileCache, get it
						do shell script "curl -o " & fileName & " " & quoted form of theURL
						
						set the end of fileCache to fileName
						tell application "Image Events"
							launch
							set the_image to open fileName
							save the_image as PICT in (fileName & ".pict")
							close the_image
						end tell
					end if
					set fileRef to open for access (fileName & ".pict")
					set the_artwork to read fileRef from 513 as picture
					close access fileRef
					set data of artwork 1 of theTrack to the_artwork
				on error m
					--beep
					display dialog "Got error when processing a song in album " & alb & ", this song will be skipped.
				 Error Msg:" & m
					try
						close the_image
						close access fileRef
					end try
				end try
			end if
		end if
	end tell
end processTrack

on retrieveSongInfo(theURL)
	set json to do shell script "curl " & quoted form of theURL
	set AppleScript's text item delimiters to ","
	set json_array to every text item of json
	set AppleScript's text item delimiters to {""}
	set img_count to 0
	set img_path_array to {}
	set album_array to {}
	set artist_array to {}
	set idx to 0
	repeat with itm in json_array
		if (offset of "result" in itm) > 0 then
			set idx to my processString(itm)
			set the end of img_path_array to ""
			set the end of album_array to ""
			set the end of artist_array to ""
		else if (offset of "artwork" in itm) > 0 then
			set item (idx + 0) of img_path_array to (my processString(itm))
		else if (offset of "album" in itm) > 0 then
			set item (idx + 0) of album_array to (my processString(itm))
		else if (offset of "artist" in itm) > 0 then
			set item (idx + 0) of artist_array to (my processString(itm))
		end if
	end repeat
end retrieveSongInfo

on processString(itm)
	set AppleScript's text item delimiters to "\":\""
	set itm_array to every text item of itm
	set AppleScript's text item delimiters to {""}
	set artw to item 2 of itm_array
	set artw to my replace_chars(artw, "\"", "")
	
	set AppleScript's text item delimiters to {"\\"}
	set artw_array to every text item of artw
	set AppleScript's text item delimiters to {""}
	
	set artw to ""
	repeat with aitem in artw_array
		if aitem starts with "u" then
			if length of aitem = 5 then
				set aitem to my lstrip_string(aitem)
				set uitem to (run script "Çdata utxt" & aitem & "È  as Unicode text")
				set artw to artw & uitem
			else
				set AppleScript's text item delimiters to {" "}
				set aitem_array to every text item of aitem
				set AppleScript's text item delimiters to {""}
				repeat with aaitem in aitem_array
					if length of aaitem = 5 and aaitem starts with "u" then
						set aaitem to my lstrip_string(aaitem)
						set uitem to (run script "Çdata utxt" & aaitem & "È  as Unicode text")
						set artw to artw & uitem & " "
					else
						set artw to artw & aaitem & " "
					end if
				end repeat
			end if
		else
			set artw to artw & aitem
		end if
	end repeat
	set artw to my replace_string(artw, "&amp;", "&")
	--set artw to my replace_chars(artw, "\\", "")
	return artw as Unicode text
end processString

on fixChars(a)
	set a to my replace_string(a, "&", "&amp;")
	return a
end fixChars


on lstrip_string(theText)
	set theText to characters (2) thru -1 of theText as text
	return theText
end lstrip_string

on replace_string(theText, oldString, newString)
	set AppleScript's text item delimiters to oldString
	set tempList to every text item of theText
	set AppleScript's text item delimiters to newString
	set theText to the tempList as string
	set AppleScript's text item delimiters to ""
	return theText
end replace_string

on replace_chars(txt, srch, repl)
	set AppleScript's text item delimiters to the srch
	set the item_list to every text item of txt
	set AppleScript's text item delimiters to the repl
	set txt to the item_list as string
	set AppleScript's text item delimiters to ""
	return txt
end replace_chars

on countSubstring(theText, theSubstring)
	set AppleScript's text item delimiters to theSubstring
	set counter to (count of every text item of theText) - 1
	set AppleScript's text item delimiters to ""
	return counter
end countSubstring

on getListItemIndex(theList, theItem)
	repeat with i from 1 to count of theList
		if (item i of theList) as text is equal to theItem as text then return i
	end repeat
	return 0
end getListItemIndex
