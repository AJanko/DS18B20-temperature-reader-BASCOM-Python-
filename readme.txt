## TEMPERATURE MONITOR

Project was written in BASCOM.Projekt składa się z programu napisanego w języku BASCOM, który tworzy animację na wyświetlaczu LCD oraz sczytuje dane z miernika temperatury DS18B20, które są następnie pobierane przez port szeregowy i przetwarzane w programie napisanym w języku Python, który na bieżąco rysuje wykres temperatury od czasu.
Gdy wykres zostanie „uzupełniony” do końca zostaje on zapisany w formacie „jpeg”, wyczyszczony oraz uzupełniany od nowa, wszystko trwa nieustannie, zbierając dla nas dane i tworząc kolejne obrazy numerując je, aż do zakończenia pracy działania programu przez użytkownika.
Uruchamiając program w języku Python wpisujemy numer portu szeregowego do którego podłączony jest mikrokontroler i reszta następuje automatycznie.

### Project include files:

„program.py” - python script. It draws temperature curve on chart.
„TP.bas” - BASCOM script. It controls microcontroler.
„ds18b20_commands.bas” - file imported to „TP.bas” file. It includes 1wire magistral functions.

„Przedstawienie projektu/EvB 5.1 – opis.odt” 	- EvB 5.1 starter kit description
„Przedstawienie projektu/Prezentacja_działania_programu.wmv” - program presentation
