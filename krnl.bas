print "Starting JOS..."
ver$ = "1.0"
input "Date? [MM/DD/YYYY]:";date$
print "Current date: ";date$
print "use 'help' for commands."
goto interpreter

interpreter:
input "Command: ";cmd$
if cmd$ == "exit" then end
if cmd$ == "print" then goto prnt
if cmd$ == "date" then goto date
if cmd$ == "time" then goto time
if cmd$ == "ver" then goto ver
if cmd$ == "help" then goto help
goto interpreter

help:
print "exit"
print "print"
print "date"
print "time"
print "ver"
print "help"
goto interpreter

prnt:
input "Print what?";prnt$
print ;prnt$
goto interpreter

date:
print "Current set date: ";date$
input "New date? [MM/DD/YYYY]:";date$
print "Current set date: ";date$
goto interpreter

time:
print "Time currently not implemented."
goto interpreter

ver:
print ;ver$
goto interpreter

crash:
cls
print "Execution has failed and the Kernel has crashed."
print "Computer will now halt."
end
goto crash
