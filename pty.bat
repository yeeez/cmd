set "ps=%*"
if not defined ps (goto :nopara)

set "port=22"
if not "%2" == "" set "port=%2"

D:
cd D:\lava\cmd
copy putty_sample.reg tmp.reg
echo "HostName"="%1" >> tmp.reg
node port2hex.js %port% >> tmp.reg

regedit /s tmp.reg
start putty.exe -load sample
goto :exit

:nopara
start /w putty.exe

:exit
