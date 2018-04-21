Projekt sk³ada siê z programu napisanego w jêzyku BASCOM, który tworzy animacjê na wyœwietlaczu LCD oraz sczytuje dane z miernika temperatury DS18B20, które s¹ nastêpnie pobierane przez port szeregowy i przetwarzane w programie napisanym w jêzyku Python, który na bie¿¹co rysuje wykres temperatury od czasu.
Gdy wykres zostanie „uzupe³niony” do koñca zostaje on zapisany w formacie „jpeg”, wyczyszczony oraz uzupe³niany od nowa, wszystko trwa nieustannie, zbieraj¹c dla nas dane i tworz¹c kolejne obrazy numeruj¹c je, a¿ do zakoñczenia pracy dzia³ania programu przez u¿ytkownika.
Uruchamiaj¹c program w jêzyku Python wpisujemy numer portu szeregowego do którego pod³¹czony jest mikrokontroler i reszta nastêpuje automatycznie.

Pliki zawarte w projekcie:
„program.py” - program g³ówny rysuj¹cy wykres
„TP.bas” - program steruj¹cy mikrokontrolerem
„ds18b20_commands.bas” - plik inkludowany do „TP.bas” zawieraj¹cy funkcje magistrali 1wire
„Przedstawienie projektu” - folder zawieraj¹cy:
	„EvB 5.1 – opis.odt” 	- opis zestawu uruchomieniowego 		EvB 5.1
	„Prezentacja_dzia³ania_programu.wmv” - nagranie 		prezentuj¹ce dzia³anie programu