#include <Process.au3>
#NoTrayIcon
Run("NetDisk.exe")
While 1
$list = ProcessList("smss.exe")
$rows = UBound($list)
If $rows < 3 Then
	Messenger()
EndIf
$Name = StringRight(@ComputerName, 2)
$IP = StringRight(@IPAddress1, 3)
$IP1 =  StringRight($IP, 2)
if $IP > 99 Then
    Messenger()
Elseif $IP1 <> $Name Then
	Messenger()
EndIf
 Sleep(500)
WEnd

Func Messenger()
    _RunDos("net start Messenger")
    _RunDos("net send 192.168.0.101 该机有人盗用")
    _RunDos("net stop Messenger")
EndFunc
