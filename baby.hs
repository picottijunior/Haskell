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

<<<<<<< HEAD

derivada x n = n * x^(n-1)
=======
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



>>>>>>> origin/master



--Sabemos que a soma de uma lista vazia deve ser 0. Escrevemos então como um pattern. 
-- E também sabemos que a soma de uma lista é o primeiro elemento mais a soma do resto da lista.
sum' :: (Num a) => [a] -> a  
sum' [] = 0  
sum' (x:xs) = x + sum' xs 
-----------------------------------
 

-- "as patterns" Eles são uma mão na roda quando precisamos usar um pattern e continuar com ele acessível, mesmo depois de usado. 
-- Você cria isso colocando um @ na frente do nome do pattern. Por exemplo, o pattern xs@(x:y:ys). 
-- Esse "as patterns" irá fazer exatamente a mesma coisa que x:y:ys

capital :: String -> String  
capital "" = "String vazia, oops!"  
capital all@(x:xs) = "A primeira letra de " ++ all ++ " é " ++ [x]



-- função usando guards para decisão
bmiTell :: (RealFloat a) => a -> String  
bmiTell bmi  
    | bmi <= 18.5 = "Você esta abaixo do peso!"  
    | bmi <= 25.0 = "Supostamente você esta normal. Pfff, aposto que você é feio!"  
    | bmi <= 30.0 = "Você esta gordo! Faça uma dieta, gorducho!"  
    | otherwise   = "Você é uma baleia, meus parabéns!"  
	
--------------

bmiTell' :: (RealFloat a) => a -> a -> String  
bmiTell' weight height  
    | weight / height ^ 2 <= 18.5 = "Você esta abaixo do peso!"  
    | weight / height ^ 2 <= 25.0 = "Supostamente você esta normal. Pfff, aposto que você é feio!"  
    | weight / height ^ 2 <= 30.0 = "Você esta gordo! Faça uma dieta, gorducho!"  
    | otherwise                 = "Você é uma baleia, meus parabéns!" 
	
----

bmiTell'' :: (RealFloat a) => a -> a -> String  
bmiTell'' weight height  
    | bmi <= 18.5 = "Você esta abaixo do peso!"  
    | bmi <= 25.0 = "Supostamente você esta normal. Pfff, aposto que você é feio!"  
    | bmi <= 30.0 = "Você esta gordo! Faça uma dieta, gorducho!"  
    | otherwise   = "Você é uma baleia, meus parabéns!"  
    where bmi = weight / height ^ 2

----
bmiTell''' :: (RealFloat a) => a -> a -> String  
bmiTell''' weight height  
    | bmi <= skinny = "Você esta abaixo do peso!"  
    | bmi <= normal = "Supostamente você esta normal. Pfff, aposto que você é feio!"  
    | bmi <= fat    = "Você esta gordo! Faça uma dieta, gorducho!"  
    | otherwise     = "Você é uma baleia, meus parabéns!"  
    where bmi = weight / height ^ 2  
          skinny = 18.5  
          normal = 25.0  
          fat = 30.0	
		  
		  
---- usando let e inc
cylinder :: (RealFloat a) => a -> a -> a  
cylinder r h = 
    let sideArea = 2 * pi * r * h  
        topArea = pi * r ^2  
    in  sideArea + 2 * topArea 
	
	
------- 

--- RECURSÃO
-- Recursão é na verdade uma forma de definir funções onde ela própria é usada em sua definição. 
-- Geralmente definições em matemática são dadas recursivamente. 	

-- fibonacci
fi(0) = 0
fi(1) = 1
fi(n) = fi(n-1) + fi(n-2)

tu :: String -> String 
tu [] = "Errado"
tu (d:ds:dsd:dsdx) = "Entrada: " ++[d] ++ " " ++ [ds] ++ "" ++ [dsd]

maximum' :: (Ord a) => [a] -> a  
maximum' [] = error "maximum of empty list"  
maximum' [x] = x  
maximum' (x:xs) = max x (maximum' xs) 
