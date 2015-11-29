print "Starting JOS..."
Dim ver As String
Dim cmd As String
Dim prnt As String
ver = "1.1"
print "Current date: ";date
print "use 'help' for commands."
goto interpreter

interpreter:
input "Command: ", cmd
if cmd = "exit" then end
if cmd = "print" then goto prnt
if cmd = "date" then goto dt
if cmd = "time" then goto tm
if cmd = "ver" then goto ver
if cmd = "help" then goto help
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
input "Print what?", prnt
print ;prnt
goto interpreter

dt:
print "Current date: ";date
goto interpreter

tm:
print ;time
goto interpreter

ver:
print ;ver
goto interpreter

crash:
cls
print "Execution has failed and the Kernel has crashed."
print "Computer will now halt."
end
goto crash
