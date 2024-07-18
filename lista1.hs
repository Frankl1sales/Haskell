-- Haskell: lista de exercícios 1
-- (1)Função que verifica se uma string contém um palíndromo
palindromo :: String -> Bool
palindromo str = str == reverse str

-- (2) verifica triangulo
verificaTriangulo :: Int -> Int -> Int -> Bool
verificaTriangulo a b c = (a+b>c)&&(a+c >b)&&(b+c > a)

-- exemplo que professor pediu
uns :: [Int]
uns = 1 : uns

-- (3)
sinal :: Int -> Int
sinal a  
 | a > 0   = 1
 | a == 0  = 0
 | otherwise = -1

-- (4)
menorTres :: Int -> Int -> Int -> Int
menorTres a b c
 | (a < b)&&(a < b) = a
 | (b < a)&&(b < c) = b
 | otherwise = c

-- (5)
-- Função recursiva para calcular potência
potencia :: Int -> Int -> Int
potencia base 0 = 1   -- Qualquer número elevado a 0 é 1
potencia base exp = base * potencia base (exp - 1)

-- Lista de exercícios extra de Haskell
-- (1)
osQuatroSaoIguais :: Int -> Int -> Int -> Int -> Bool
osQuatroSaoIguais a b c d = (a==b)&&(b==c)&&(c==d)

-- (2)
quantosSaoIguais :: Int -> Int -> Int -> Int
quantosSaoIguais a b c
 | (a==b)&&(a==c) = 3
 | (a==b)||(a==c)||(b==c) = 2
 | otherwise = 0
