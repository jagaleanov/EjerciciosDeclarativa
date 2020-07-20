# dado un número entero generar un número a partir de sus dígitos
# que sólo contenga aquellos que son múltiplo de 3


def splitNumber(n):
    if n == 0:
        return []
    elif n > 9:
            return splitNumber((n-(n % 10))//10) + [(n % 10)]
    else:
        return [n]

def joinNumber(lista):
    if len(lista) == 0:
        return 0
    else:
        return joinNumber(lista[1:]) + (lista[0] * (10 ** (len(lista[1:]))))

def digsMult3(n):
    return joinNumber([num for num in splitNumber( n ) if num % 3 == 0])

print("digsMult3 de 32359467519")
print(digsMult3(32359467519))
