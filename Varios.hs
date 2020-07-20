-- Definir la función factorial tal que factorial n es el factorial de n
factorial :: Int ->  Int 
factorial 0 = 1
factorial 1 = 1
factorial n = n * factorial (n-1)

-- Definir la función comb tal que comb n k es el número de combinaciones de n elementos 
-- tomados de k en k (no sabemos probablilidad )

-- Definir la función impar tal que impar x se verifica si el número x es impar

impar :: Int -> Bool
impar x = (if (mod x 2 )==1 
    then True 
    else False)

-- Definir la función cuadrado tal que cuadrado x es el cuadrado del número x

cuadrado :: Int -> Int
cuadrado x = x*x

-- Definir la función suma_de_cuadrados tal que suma_de_cuadrados l es la suma de los 
-- cuadrados de los elementos de la lista l

sumaC :: [Int] -> Int
sumaC [] = 0
sumaC (x:xs) = x*x + sumaC xs

--resolver una ecuacion de segundo grado entregando las raices

rEcu :: Float -> Float -> Float -> [Float]
rEcu a b c = [(-b+(sqrt ((b^2)-4*a*c)))/2*a,(-b-(sqrt ((b^2)-4*a*c)))/2*a]  


rEcu2 :: [Double] -> [Double]
rEcu2 x = [(-x!!1+(sqrt ((x!!1^2)-4*x!!0*x!!2)))/2*x!!0,(-x!!1+(sqrt ((x!!1^2)-4*x!!0*x!!2)))/2*x!!0]  

-- valor absoluto

valorAbs :: Int -> Int
valorAbs x = if x < 0 
    then  (-x)
    else x


-- valor del signo

mostrarSigno :: Int -> Int
mostrarSigno 0 = 0
mostrarSigno x = x `div` valorAbs x 

--conjuncion

conjuncion :: Bool -> Bool -> Bool
conjuncion a b = if a==b 
    then True
    else False
    
--potencia

potencia :: Int -> Int -> Int
potencia x 0 = 1
potencia x 1 = x
potencia x y = x*(potencia x (y-1))

(¬=) :: Float -> Float -> Bool
x ¬= y = if (abs (x-y)) > 0.00001
    then False
    else True