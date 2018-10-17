
require 'inifile'

# Apre e Legge il file

puts print "+++ Steam API & EMU Changer By Anonik +++"
puts
puts print "+++ To See all Commands  See the Guide.txt file +++"
puts
puts print "Do you need to edit (1* Steam_api.ini) | (2* Steam_emu.ini) or (3* Custom .ini file) ?"
puts print "Type 1 to select Steam_api.ini , 2 to select Steam_emu.ini or 3 to enter a custom .ini file"
puts
steamselect=gets.chomp
puts

#Steam_api section - START
if steamselect == 1.to_s


ini = IniFile.load('user_file/steam_api.ini')

puts print "Insert your Username For the Game"
puts
username=gets.chomp

puts

puts print "Insert the language for the game"
puts
language=gets.chomp

case language

when "Italian","italiano","italian","Italiano"
	puts language = "italian"
when "English","english","USA","usa","Inglese","inglese"
	puts language ="english"
end

# Leggi i file del .ini
puts ini['Settings']['UserName']
puts ini['Settings']['Language']

# Modifica i dati
puts 
ini['Settings']['UserName'] = username
ini['Settings']['Language'] = language

# Salva il file
ini.save

#Steam_api section - END

#---------------------------------------------------------

#Steam_emu section - START
else steamselect == 2.to_s


ini = IniFile.load('user_file/steam_emu.ini')

puts print "Insert your Username For the Game"
puts
username=gets.chomp

puts

puts print "Insert the language for the game"
puts
language=gets.chomp

case language

when "Italian","italiano","italian","Italiano"
	puts language = "italian"
when "English","english","USA","usa","Inglese","inglese"
	puts language ="english"
end

# Leggi i file del .ini
puts ini['Settings']['UserName']
puts ini['Settings']['Language']

# Modifica i dati
puts 
ini['Settings']['UserName'] = username
ini['Settings']['Language'] = language

# Salva il file
ini.save

#Steam_emu section - END
end #END IF


#-------------------------------------------------------------

# Custom .ini File START
if steamselect == 3.to_s
puts print "choose the name of your .ini file"
filename=gets.chomp

 dir1='user_file/'
dirname =dir1 + filename
 dirname

ini = IniFile.load (dirname) #('user_file/'.File)

puts print "Insert your Username For the Game"
puts
username=gets.chomp

puts

puts print "Insert the language for the game"
puts
language=gets.chomp

case language

when "Italian","italiano","italian","Italiano"
	puts language = "italian"
when "English","english","USA","usa","Inglese","inglese"
	puts language ="english"
end

# Leggi i file del .ini
puts ini['Settings']['UserName']
puts ini['Settings']['Language']

# Modifica i dati
puts 
ini['Settings']['UserName'] = username
ini['Settings']['Language'] = language

# Salva il file
ini.save
end
#Custom .ini File END