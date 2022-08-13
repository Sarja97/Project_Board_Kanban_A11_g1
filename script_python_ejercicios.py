#PYTHON

#############################################################################################################################################################################################

Escribir el código en Python que permita realizar lo siguiente:

#############################################################################################################################################################################################

#EJERCICIO 1

#Crear una lista en Python denominada “Dueno” que contenga los siguientes valores:

#28957346,  Juan,  Perez, 4789689,  Belgrano 101

#Dichos datos se corresponden  con los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección). Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000.

# EJERCICIO 1

dueno = []

dni = 28957346;
nombre = "Juan";
apellido = "Perez";
telefono = "4789689";
direccion = "Belgrano 101";

dueno.append([dni, nombre, apellido, telefono, direccion]);

print(len(dueno))
print(dueno)

if(dueno[0][0] > 26000000):
    print("El teléfono es: " + dueno[0][3] + " " + ". Ya que el DNI " + str(dueno[0][0]) + " es mayor que 26000000.")
else:
    print("El DNI " + str(dueno[0][0]) + " NO es mayor que 26000000 por lo que no se mostrará el teléfono.")

############################################################################################################################################################################################# 

#EJERCICIO 2

#Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla con excepción del DNI y el apellido. 

#Los elementos de la lista son: 23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”

#Que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección) 

dueno2 = []

dni = 23546987;
nombre = "Maria";
apellido = "Perez";
telefono = "4789689";
direccion = "Pueyrredon  811";

dueno2.append([dni, nombre, apellido, telefono, direccion]);

for i in dueno2:
    print("Nombre: " + dueno2[0][1])
    print("Telefono: " + str(dueno2[0][3]))
    print("Direccion: " + str(dueno2[0][4]))

#############################################################################################################################################################################################

#EJERCICIO 3

#Crear un lista en Python denominado “Perro” que contenga los siguientes valores:

#13,  Puppy,  12/12/2012 , Macho, 123

#Que se corresponde con los datos de un perro de nuestra base de datos (Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño). 

#Modificar la fecha de nacimiento por 13/12/2012 y reemplazar “dni del dueño” por 28957346 .

perro = []

id_perro = 13;
nombre = "Puppy";
fecha_nac = "12/12/2012";
sexo = "macho";
dni_dueno = 123;
    
perro.append([id_perro, nombre, fecha_nac, sexo, dni_dueno])

if(perro[0][2] == fecha_nac):
    perro[0][2] = "13/12/2012";

if(perro[0][4] == dni_dueno):
   perro[0][4] = 28957346;
  
print(perro)

#############################################################################################################################################################################################