## TEMPERATURE MONITOR

Project purpose was to get data from microcontroller and process it. 

Microcontroller was programmed with BASCOM language. 
Startet kit includes LCD data panel and DS18B20 temperature gauge. 

BASCOM scrip twhich creates an animation on the LCD display and reads data from a temperature meter, which is then downloaded via a serial port and processed in a program written in Python, which draws a temperature graph from time to time.

When the chart is "completed" to the end it is saved in "jpeg" format, cleaned and supplemented again, everything continues constantly, collecting data for us and creating subsequent images by numbering them until the end of the program operation by the user.

Running the Python program, enter the serial port number to which the microcontroller is connected and the rest is done automatically.

### Project include files:

"program.py" - python script. It draws temperature curve on chart.
"TP.bas" - BASCOM script. It controls microcontroler.
"ds18b20_commands.bas" - file imported to „TP.bas” file. It includes 1wire magistral functions.

"Przedstawienie projektu/EvB 5.1 – opis.odt" 	- EvB 5.1 starter kit description
"Przedstawienie projektu/Prezentacja_działania_programu.wmv" - program presentation
