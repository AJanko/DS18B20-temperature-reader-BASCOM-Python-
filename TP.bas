'dziala
'$regfile = "m644pdef.dat"
$regfile = "m32def.dat"
'$regfile = "m16def.dat"
$include "ds18b20_commands.bas"
'podajemy ocie?ke dostepu do pliku, który chcemy do31czya

$crystal = 16000000

$baud = 9600

Config Lcdpin = Pin , Rs = Portc.2 , E = Portc.3 , Db4 = Portc.4 , Db5 = Portc.5 , Db6 = Portc.6 , Db7 = Portc.7
Config Lcd = 16 * 2

Deflcdchar 1 , 6 , 9 , 9 , 6 , 32 , 32 , 32 , 32
'znak stopnia
Cls
Cursor Off Noblink
Lcd "T:+000.00 {001}C"

Config 1wire = Pinb.0
Dim Lsb As Byte , Msb As Byte , T As Single , S As String * 6

Dim A As Byte

Deflcdchar 0 , 31 , 31 , 31 , 4 , 31 , 4 , 14 , 17
Deflcdchar 1 , 31 , 14 , 14 , 4 , 31 , 21 , 14 , 10
Deflcdchar 2 , 14 , 31 , 31 , 31 , 15 , 7 , 3 , 1           '
Deflcdchar 3 , 14 , 31 , 31 , 31 , 30 , 28 , 24 , 16

Dim X As Byte
Dim Y As Byte


Do

For X = 1 To 8
Cls
Locate 2 , X
Lcd Chr(0)
Y = 17 - X
Locate 2 , Y
Lcd Chr(1)
Waitms 200
Next X
Locate 1 , 8
Lcd Chr(2)
Locate 1 , 9
Lcd Chr(3)
'Waitms 1000


1wreset
1wwrite Skip_rom
1wwrite Convert_t
Waitms 750
1wreset
1wwrite Skip_rom
1wwrite Read_scratchpad
Lsb = 1wread()
Msb = 1wread()
T = Msb * 256
T = T + Lsb
T = T / 16
If Msb.7 = 1 Then T = T - 4096
Locate 1 , 3
S = Fusing(t , "#.##")
'S = Format(s , "0000")                                      'usuniety +00 sprzed 0000

Lcd S
Print S
Loop
End