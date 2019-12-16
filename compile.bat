@echo off
if exist spasm.exe (
  echo "Starting Compile..."
) else (
  echo "Opening readme..."
  start "" https://github.com/Zeda/remmarg
  exit
)

cd src

echo "Generating grammer2.5.inc"
python jt.py jmptable.z80 grammer2.5.inc
copy /Y grammer2.5.inc ..\docs\grammer2.5.inc

echo "Assembling App"
..\spasm.exe grammer.z80 ..\bin\remmag.8xk

cd..
