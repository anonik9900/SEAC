
require 'inifile'

# Apre e Legge il file

#Language Loading
ini = IniFile.load('config/settings.ini')
ini['Settings']['Language']
if ini['Settings']['Language'] == "Italian"


#Programma - Italiano

puts print "+++ Steam API & EMU Changer By Anonik +++"
puts
puts print "+++ Per visualizzare tutti i comandi apri il file guide.txt +++"
puts
puts print "Premi 1 per modificare un file Steam_api.ini, premi 2 per modificare un file Steam_emu.ini o premi 3 per inserirne uno personalizzato ?"
puts
steamselect=gets.chomp
puts

#Steam_api section - START
if steamselect == 1.to_s

puts print "+++ Modifica File Steam_api.ini +++"
puts

ini = IniFile.load('user_file/steam_api.ini')

puts print "Inserisci il tuo username per il gioco"
puts
username=gets.chomp

puts

puts print "Inserisci la lingua per il gioco"
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
end
#---------------------------------------------------------

#Steam_emu section - START
if steamselect == 2.to_s

puts print "+++ Modifica File Steam_emu.ini +++"
puts

ini = IniFile.load('user_file/steam_emu.ini')

puts print "Inserisci il tuo username per il gioco"
puts
username=gets.chomp

puts

puts print "Inserisci la lingua per il gioco"
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
end#END IF


#-------------------------------------------------------------

# Custom .ini File START
if steamselect == 3.to_s
puts
puts print "Digita il nome del tuo file .ini (includi l'estensione nel nome)"
filename=gets.chomp

 dir1='user_file/'
dirname =dir1 + filename
 dirname

ini = IniFile.load (dirname) #('user_file/'.File)

#scelta
puts
print "Quante sezioni vuoi creare ?"
puts
sezioni=gets.chomp

puts
puts print "Quanti parametri vuoi aggiungere ?"
puts
parametri=gets.chomp

puts

#1 sezione con max 2 parametri

case sezioni
when 1.to_s

#Crea
puts
puts print "Crea il tuo file .ini personale"
puts
puts print "1) Nome della sezione"
puts
sectioname=gets.chomp

puts

case parametri
when 1.to_s

puts print "2) Nome del parametro"
puts
varname=gets.chomp

when 2.to_s
puts
puts print "2)Nome del parametro 1"
puts
varname=gets.chomp

puts print "3)Nome del parametro 2"
puts
varname2=gets.chomp

end
puts

case parametri #se i parametri sono 2
when 2.to_s
puts print "4)Inserisci il valore per il parametro 1"
puts
parname=gets.chomp

puts

puts print "5)Inserisci il valore per il parametro 2"
puts
parname2=gets.chomp

#Fine Crea    
ini[sectioname][varname] = parname    
ini[sectioname][varname2] = parname2


# Salva il file
ini.save

end #se i parametri sono 2

case parametri
when 1.to_s
puts print "3) Inserisci il valore per il tuo parametro"
puts
parname=gets.chomp

# Leggi i file del .ini
#puts ini[sectioname][varname]
    
#Fine Crea    
ini[sectioname][varname] = parname    



# Salva il file
ini.save

end

#Fine 1 sezione con max 2 parametri

when 2.to_s


puts
puts print "Crea il tuo file .ini personale"
puts
puts print "1) Nome della sezione 1"
puts
sectioname=gets.chomp

puts
puts print "2)Nome della sezione 2"
puts
sectioname2=gets.chomp

puts

case parametri
when 1.to_s

puts print "3) Nome del parametro"
puts
varname=gets.chomp

when 2.to_s
puts
puts print "3)Nome del parametro 1"
puts
varname=gets.chomp

puts print "4)Nome del parametro 2"
puts
varname2=gets.chomp

end
puts

case parametri #se i parametri sono 2
when 2.to_s
puts print "5)Inserisci il valore per il parametro 1"
puts
parname=gets.chomp

puts

puts print "6)Inserisci il valore per il parametro 2"
puts
parname2=gets.chomp

#Fine Crea    
ini[sectioname][varname] = parname    
ini[sectioname2][varname2] = parname2


# Salva il file
ini.save

end #se i parametri sono 2

case parametri
when 1.to_s
puts print "4) Inserisci il valore per il tuo parametro"
puts
parname=gets.chomp

# Leggi i file del .ini
#puts ini[sectioname][varname]
    
#Fine Crea    
ini[sectioname][varname] = parname    
ini[sectioname2][varname] = parname


# Salva il file
ini.save

end







end
#Fine scelta


end
#Custom .ini File END

#Fine Programma - Italiano

end


#-------------------------------------------------------------- End Italian Version ------------------------------------------------------------------



if ini['Settings']['Language'] == "English"


#End language Loading

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
end
#---------------------------------------------------------

#Steam_emu section - START
if steamselect == 2.to_s


ini = IniFile.load('user_file/steam_emu.ini')

puts print "Insert syour Username For the Game"
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
end#END IF


#-------------------------------------------------------------

# Custom .ini File START
if steamselect == 3.to_s

puts print "+++ Custom .ini creator +++"

puts
puts print "Choose the name of your .ini file"
filename=gets.chomp

 dir1='user_file/'
dirname =dir1 + filename
 dirname

ini = IniFile.load (dirname) #('user_file/'.File)

#scelta
puts
print "How many sections do you want to create?"
puts
sezioni=gets.chomp

puts
puts print "How many parameters do you want to add?"
puts
parametri=gets.chomp

puts

#1 sezione con max 2 parametri

case sezioni
when 1.to_s

#Crea
puts
puts print "1st) Section name"
puts
sectioname=gets.chomp

puts

case parametri
when 1.to_s

puts print "2nd) Parameter name"
puts
varname=gets.chomp

when 2.to_s
puts
puts print "2) Name of parameter 1"
puts
varname=gets.chomp

puts print "3) Name of parameter 2"
puts
varname2=gets.chomp

end
puts

case parametri #se i parametri sono 2
when 2.to_s
puts print "Enter the value for parameter 1"
puts
parname=gets.chomp

puts

puts print "Enter the value for parameter 2"
puts
parname2=gets.chomp

#Fine Crea    
ini[sectioname][varname] = parname    
ini[sectioname][varname2] = parname2


# Salva il file
ini.save

end #se i parametri sono 2

case parametri
when 1.to_s
puts print "3) Enter the value for your parameter"
puts
parname=gets.chomp

# Leggi i file del .ini
#puts ini[sectioname][varname]
    
#Fine Crea    
ini[sectioname][varname] = parname    



# Salva il file
ini.save

end

#Fine 1 sezione con max 2 parametri

when 2.to_s


puts
puts print "1st) Name of section 1"
puts
sectioname=gets.chomp

puts
puts print "2) Name of section 2"
puts
sectioname2=gets.chomp

puts

case parametri
when 1.to_s

puts print "3) Parameter name"
puts
varname=gets.chomp

when 2.to_s
puts
puts print "3) Name of the Parameter 1"
puts
varname=gets.chomp

puts print "4) Name of the Parameter 2"
puts
varname2=gets.chomp

end
puts

case parametri #se i parametri sono 2
when 2.to_s
puts print "Enter the value for parameter 1"
puts
parname=gets.chomp

puts

puts print "Enter the value for parameter 2"
puts
parname2=gets.chomp

#Fine Crea    
ini[sectioname][varname] = parname    
ini[sectioname2][varname2] = parname2


# Salva il file
ini.save

end #se i parametri sono 2

case parametri
when 1.to_s
puts print "4) Enter the value for your parameter"
puts
parname=gets.chomp

# Leggi i file del .ini
#puts ini[sectioname][varname]
    
#Fine Crea    
ini[sectioname][varname] = parname    
ini[sectioname2][varname] = parname


# Salva il file
ini.save

end







end
#Fine scelta


end
#Custom .ini File END


end #Fine Programma Inglese