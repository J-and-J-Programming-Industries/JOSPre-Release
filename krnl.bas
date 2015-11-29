cls
print "Starting JOS..."
Dim ver As String
Dim cmd As String
Dim prnt As String
Dim fl As String
ver = "1.2"
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
if cmd = "cls" then goto clean
if cmd = "run" then goto exe
if cmd = "crash" then goto crash
goto interpreter

clean:
cls
goto interpreter

help:
print "exit"
print "print"
print "date"
print "time"
print "ver"
print "help"
print "cls"
print "run"
goto interpreter

prnt:
input "Print what? ", prnt
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

exe:
input "File location?: ", fl
run(fl)
goto interpreter

crash:
cls
print "[WARN]: Execution has failed and the Kernel has crashed."
print "[WARN]: Interpreter will now halt."
print "[INFO]: Kernel halted"
goto crash2

crash2:
goto crash2
		
