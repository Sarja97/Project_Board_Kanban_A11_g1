### Ejercicio Nº 6 ######
Historial2=(23500, 5960, 2300, 10200, 8900)
gasto1,gasto2,gasto3,gasto4,gasto5=Historial2

print("El gasto total por atención de Frida en este período fue de $",gasto1+gasto2+gasto3+gasto4+gasto5)

count=0
for i in Historial2:
	if(i>5000):
		count+=1
print("Los gastos mayores a $5000 son:",str(count))




### Ejercicio Nº 7 ######
Historial3=(9530, 4120, 4580, 1500, 890,7516,426)
gasto1,gasto2,gasto3,gasto4,gasto5,gasto6,gasto7=Historial3
promedio_de_gasto=(gasto1+gasto2+gasto3+gasto4+gasto5+gasto6+gasto7)/7
print("El promedio de gasto de la mascota Lennon es de $",promedio_de_gasto)
if promedio_de_gasto>4500:
    print("Se ha excedido del gasto promedio para su mascota")