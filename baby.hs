main :: IO ()
main = do putStrLn "Hello World"

fatorial n = if n > 0 then n * fatorial (n-1) else 1

inc n = n + 1

areaTriangulo b h = (b * h) / 2
areaRetangulo b h = b * h
areaCirculo r = pi * r^2
areaTrapezio a b h = (a + b) * h / 2

erro :: [Char]
erro = "Numero maior que 100, portanto não será dobrado"


doubleSmallNumber x = if x > 100
	then  x
	else (x * 2)
	
centopeia = [1,2,3,4,5] 

tri :: [(Double, Double, Double)]
tri = [ (a,b,c) | c <- [0.001..10], b <- [0.001..10], a <- [0.001..10] ]
rightTri a = [ (a,b,c) | c <- [1..10], b <- [1..c], a^2 + b^2 == c^2]
rightTri' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]


triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ]
rightTriangles a = [ (a,b,c) | c <- [1..10], b <- [1..c], a^2 + b^2 == c^2]
rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

----------------------------------------------
--Sintaxe em Função

lucky :: (Integral a) => a -> String  
lucky 7 = "SETE! BINGO!"  
lucky x = "Desculpe, tente novamente!"

charName :: Char -> String  
charName 'a' = "Albert"  
charName 'b' = "Broseph"  
charName 'c' = "Cecil"


addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)  
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)  -- Recebe 2 pares de argumentos

-- /* Função para trabalhar com triplas
first :: (a, b, c) -> a  
first (x, _, _) = x  
  
second :: (a, b, c) -> b  
second (_, y, _) = y  
  
third :: (a, b, c) -> c  
third (_, _, z) = z  

--  _ significa o mesmo que em compreensão de listas. 
--Se o compilador não deve se importar com o que há ali, usamos o _ .

-- */ ----------------------------------

head' :: [a] -> a  
head' [] = error "Proibido chamar head em uma lista vazia, amador!"  
head' (x:_) = x 

----------------

tell :: (Show a) => [a] -> String  
tell [] = "A lista esta vazia"  
tell (x:[]) = "A lista tem apenas um elemento: " ++ show x  
tell (x:y:[]) = "A lista tem dois elementos: " ++ show x ++ " e " ++ show y  
tell (x:y:_) = "Esta lista esta longa demais. Veja os dois primeiros elementos: " ++ show x ++ " e " ++ show y

--------

length' :: (Num b) => [a] -> b  
length' [] = 0  
length' (_:xs) = 1 + length' xs  -- dividindo lista entre 1º termo e resto (xs = resto) soma
-- soma o resto + 1 para obter o tamanho da lista.
---------------



