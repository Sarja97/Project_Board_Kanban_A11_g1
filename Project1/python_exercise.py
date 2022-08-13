historial_4 = (7510, 7960, 76180, 800, 4100)

def min_value(tupla):
    minimo = tupla[0]
    for i in range(len(tupla) -1):
        if tupla[i] < minimo:
            minimo = tupla[i]
        
    print(minimo)    

min_value(historial_4) #salida: 800

historial_5 = (8520, 9510, 7530, 3570, 1590)

def max_value(tupla):
    maximo = tupla[0]
    for i in range(len(tupla) -1):
        if tupla[i] > maximo:
            maximo = tupla[i]
        
    print(maximo)    

max_value(historial_5) #salida: 9510

owners = ( "Juan",  "Mario",  "Ariel",  "Josefina",  "Marianella")

def order(lista):
    print(sorted(lista))

order(owners)    