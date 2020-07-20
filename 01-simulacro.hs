--dada una lista de listas construir una lista de tuplas que contenga 
--en cada tupla la suma de los valores de cada sublista y la cantidad de elementos de cada sublista
sumar :: [ Int ] -> Int
sumar [ ] = 0
sumar ( x : xs ) = x + sumar( xs )

myTuples :: [ [ Int ] ] -> [ ( Int , Int ) ]
myTuples [] = []
myTuples ( x : xs ) = [ ( sumar x , length x ) ] ++ myTuples xs

--dada una lista de flotantes, devolver la concatenacion de los decimales

decimalConcat :: [ Float ] -> String
decimalConcat [ ] = [ ]
decimalConcat ( x : xs ) = drop ( length ( show ( truncate x ) :: String ) + 1 ) ( show x :: String ) ++ func2 ( xs )

--dado un número entero generar un número a partir de sus dígitos 
--que sólo contenga aquellos que son múltiplo de 3

splitNumber :: Int -> [ Int ]
splitNumber n = 
    if n > 9
        then ( splitNumber ( n `div` 10 ) ) ++ [ n `mod` 10 ]
        else [n]

joinNumber :: [ Int ] -> Int
joinNumber [ ] = 0
joinNumber ( x : xs ) = ( joinNumber xs) + ( x * 10 ^ ( length xs ) )

digsMult3 :: Int -> Int
digsMult3 n = joinNumber [ x | x <- splitNumber n , x `mod` 3 == 0 ]