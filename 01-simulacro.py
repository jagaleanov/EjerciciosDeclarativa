

#dada una lista de listas construir una lista de tuplas que contenga 
#en cada tupla la suma de los valores de cada sublista y la cantidad de elementos de cada sublista

def sumar ( lista ) :
    if len( lista ) == 1:
        return lista[ 0 ]
    else:
        return lista[ 0 ] + sumar( lista[ 1 : len( lista ) ] )

def myTuples (lista) :
    if len (lista) == 0:
        return []
    else :
        return [(sumar(lista[0]), len( lista[0]))] + myTuples(lista[1:])

#print("myTuples de [[1,2,3],[8,4,6,8,7,5],[6,8,7,3]]")
#print(myTuples([[1,2,3],[8,4,6,8,7,5],[6,8,7,3]]))

#dada una lista de flotantes, devolver la concatenacion de los decimales

def decimalConcat ( lista ) :
    if len(lista) == 0:
        return ""
    else :
        return str( lista[0] ) [ ( len( str( int( lista[0] ))) + 1 ) : ] + decimalConcat( lista[1:])

#print("decimalConcat de [451.04,2.2,3.8,4.4]")
#print(decimalConcat([451.04,2.2,3.8,4.4]))

# dado un número entero generar un número a partir de sus dígitos
# que sólo contenga aquellos que son múltiplo de 3

def splitNumber (n):
    if n > 9:
            return splitNumber( (n-(n % 10) ) // 10 ) + [ (n % 10) ]
    else:
        return [n]

def joinNumber(lista):
    if len(lista) == 0:
        return 0
    else:
        return joinNumber(lista[1:]) + (lista[0] * (10 ** ( len( lista [1:]))))

def digsMult3(n):
    return joinNumber([num for num in splitNumber(n) if num % 3 == 0])

#print("digsMult3 de 32359467519")
#print(digsMult3(32359467519))