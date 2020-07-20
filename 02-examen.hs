-- Dado un numero entero contar cuantos de sus dígitos son múltiplos de 7 (5 min)

splitNumber :: Int -> [ Int ]
splitNumber n = 
    if n > 9
        then ( splitNumber ( n `div` 10 ) ) ++ [ n `mod` 10 ]
        else [n]

lenDigsMult7 :: Int -> Int
lenDigsMult7 n = length [ x | x <- splitNumber n , x `mod` 7 == 0 ]

-- Dada una lista de strings retornar una lista con las cadenas de longitud par (10 mins)
strListsEven :: [String] -> [String]
strListsEven a = [ x | x <- a , ( length x )  `mod` 2 == 0 ]

-- Dada una lista de listas de enteros retornar la sublista con mayor cantidad de numeros pares (10 mins)
countEven :: [Int] -> Int
countEven a = length [ x | x <- a , x`mod` 2 == 0 ]


mayorListEvens :: [[Int]] -> [Int]
mayorListEvens [] = []
mayorListEvens [x] = x
mayorListEvens (x:y:xs) = 
    if countEven x > countEven y
        then mayorListEvens (x : xs)
        else mayorListEvens (y : xs)
