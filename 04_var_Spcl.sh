#!/bin/bash

echo "it is usedsee what variables you have passed to script: $@"
echo "Number of varable count passed in the Script : $#"
echo "First varaible : $1"
echo "who is the running the Scripts: $USER"
echo "which directory: $PWD"
echo "Home Directory: $HOME"
echo "PID for the current script: $$"
sleep 5 &
wait $!
echo "Line number you want to Know : $LINENO"
echo "PID background Running : $!"
echo "$SECONDS seconds the Script executed"
