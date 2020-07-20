--Dada una lista de listas retornar el mayor, el menor y el promedio de cada lista

operations::[Float]->[Float]
operations xs = [maximum xs, minimum xs, (sum xs) / fromIntegral(length xs)]

listOperations::[[Float]]->[[Float]]
listOperations xs = map operations xs

--Dada una lista de palabras retornar una lista de listas en la que cada sublista contiene la 
--cantidad de caracteres de cada palabra el menor valor entero correspondiente a los caracteres 
--de la palabra y el mayor valor entero correspondiente

listData :: [String] -> [[Int]]
listData [] = []
listData (x:xs) = [[length x , minimum (map fromEnum x) , maximum (map fromEnum x)]] ++ listData xs

--Dada una lista de la palbras generar una lista de listas en la que cada sublista 
--contiene por caracter de la palabra una tupla con el caracter y la cantidad de apariciones de este 
--en la palabra

countAppears::String -> [(Char,Int)]
countAppears list = [(x, (length (filter (== x) list))) | x <- list]

countAppearsList :: [String] -> [[(Char,Int)]]
countAppearsList str = map countAppears str

