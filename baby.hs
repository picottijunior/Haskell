-- Learning Haskell

fatorial n = if n > 0 then n * fatorial (n-1) else 1

inc n = n + 1

areaTriangulo b h = (b * h) / 2
areaRetangulo b h = b * h
areaCirculo r = pi * r^2
areaTrapezio a b h = (a + b) * h / 2

doubleSmallNumber x = if x > 100
	then x
	else x * 2
	
centopeia = [1,2,3,4,5] 

triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ]
rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]


derivada x n = n * x^(n-1)