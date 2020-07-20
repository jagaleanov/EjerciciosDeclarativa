
# Dado un numero entero contar cuantos de sus dígitos son múltiplos de 7 (5 min)

def splitNumber (n):
    if n > 9:
            return splitNumber( (n-(n % 10) ) // 10 ) + [ (n % 10) ]
    else:
        return [n]

def digsMult7(n):
    return len([num for num in splitNumber(n) if num % 7 == 0])

#print("digsMult7 de 323759467519")
#print(digsMult7(323759467519))

# Dada una lista de strings retornar una lista con las cadenas de longitud par (10 mins)

def strListsEven(listas):
    return [lista for lista in listas if len(lista) % 2 == 0]

#print("strListsEven de [\"gato\",\"perro\",\"pajaro\"]")
#print(strListsEven(["gato","perro","pajaro"]))

# Dada una lista de listas de enteros retornar la sublista con mayor cantidad de numeros pares (10 mins)

def countEven(lista):
    return len([x for x in lista if x % 2 == 0])
    
def mayorListEvens(listas):
    if len(listas)==0:
        return []
    elif len(listas)==1:
        return listas[0]
    else:
        if countEven(listas[0]) > countEven(listas[1]):
            return mayorListEvens([listas[0]] + listas[2:]) 
        else:
            return mayorListEvens(listas[1:]) 

#print("mayorListEvens de [[1,2,3,2],[2,4,8],[16,12]]")
#print(mayorListEvens([[1,2,3,2],[2,4,8],[16,12]]))