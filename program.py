import pygame
import serial
import time
import random
import struct

comNumber = input('Podaj numer COM Portu: ')
COMPort = 'COM' + comNumber
ser = serial.Serial(COMPort, 9600)
ser.xonxoff = True
#print(ser.is_open)

pygame.init()
black = (0,0,0)
blue = pygame.color.THECOLORS['blue']
white = (255,255,255)
pygame.display.set_caption('Temperature for second')

screen = pygame.display.set_mode((800, 600))
clock = pygame.time.Clock()

ktory_obieg = -1

def program(ktory_obieg):

    ktory_obieg += 1
    screen.fill(white)
    screen.blit(pygame.image.load('wykres.png'), [0,0])

    running = 1
    lista = []
    lista_ile = 0

    while running:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = 0   
        
        dane = ser.read(5).decode('utf-8')  
        garbage = ser.read(2)
        daneFloat = float(dane)
        print(dane)
        lista.append((5 + 10*lista_ile,1025-25*daneFloat))
        lista_ile += 1
        iterator = 0
        if lista_ile > 1:
            i = 0
            while i < lista_ile-1:
                #if iterator = lista_ile:
                    #break
                pygame.draw.line(screen,blue, lista[i], lista[i+1])
                # print(lista)
                i += 1
        
        if (lista_ile + 1) % 71 == 0:
            nazwa = 'wykres[' + str(ktory_obieg) + '].jpeg'
            pygame.image.save(screen, nazwa)
            projekt(ktory_obieg)        
                                 
        pygame.display.flip()
        clock.tick(60)
        
program(ktory_obieg)
pygame.quit()
quit()
