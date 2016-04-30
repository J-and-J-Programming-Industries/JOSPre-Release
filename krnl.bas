cls
print "Starting JOS..."
Dim ver As String
Dim cmd As String
Dim prnt As String
Dim fl As String
Dim chwd As String
Dim direc As String
ver = "1.3"
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
if cmd = "credits" then goto credits
if cmd = "ls" then chain("/bin/ls")
if cmd = "dir" then chain("/bin/ls")
if cmd = "edit" then goto edit
if cmd = "cd" then goto cwd
if cmd = "del" then goto del
if cmd = "mkdir" then goto mkdira
if cmd = "rmdir" then goto rmdira
if cmd = "pwd" then goto pwd
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
print "credits"
print "ls"
print "dir"
print "edit"
print "cd"
print "del"
print "mkdir"
print "rmdir"
print "pwd"
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
chain(fl)
goto interpreter

crash:
cls
print "[WARN]: chainution has failed and the Kernel has crashed."
print "[WARN]: Interpreter will now halt."
print "[INFO]: Kernel halted"
goto crash2

crash2:
goto crash2

edit:
chain("nano")
goto interpreter

cwd:
input "Directory location?: ", chwd
chdir (chwd)
goto interpreter

rmdira:
input "Directory location?: ", direc
rmdir (direc)
goto interpreter

mkdira:
input "Direcectory location?: ", direc
mkdir (direc)
goto interpreter

del:
input "File location?: ", direc
kill (direc)
goto interpreter

pwd:
print CurDir
goto interpreter

credits:
Print "Joshua Herron for console, compiling, packaging, and all of the rest of the project that was made by me."
print "The Linux team for Linux backbone."
print "Written in FREEBasic."
print "All Linux and FREEBasic dependancies are NOT written by me."
goto interpreter
