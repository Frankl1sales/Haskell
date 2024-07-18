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
 | (a < b)&&(a < c) = a
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

-- (3)
todosDiferentes :: Int -> Int -> Int -> Bool
todosDiferentes a b c = (a /= b) &&(a/=c)&&(b/=c)

-- (4)
 -- todosDiferentes n m p = ( ( n/=m ) && ( m/=p ) )
 -- A expressão não verifica se 'n' é diferente de 'p'

-- (5)
todosIguais :: Int -> Int -> Int -> Bool
todosIguais n m p = (n == m) && (m == p)

quantosSaoIguais1 :: Int -> Int -> Int -> Int
quantosSaoIguais1 n m p
    | todosIguais n m p = 3  -- Se todos forem iguais, retorna 3
    | todosDiferentes n m p = 0  -- Se todos forem diferentes, retorna 0
    | otherwise = 2  -- Caso contrário, exatamente dois são iguais

-- (6)
elevadoDois :: Int -> Int
elevadoDois n = n ^ 2

-- (7)
elevadoQuatro :: Int -> Int
elevadoQuatro n = elevadoDois (elevadoDois n)

-- (8)
vendas :: Int -> Int
-- Exemplo fictício de implementação da função vendas
vendas semana
    | semana == 0 = 100  -- Exemplo de vendas na semana 0
    | semana == 1 = 150  -- Exemplo de vendas na semana 1
    | semana == 2 = 200  -- Exemplo de vendas na semana 2
    | otherwise = 0      -- Para semanas além de 0, 1 e 2 (fictício)

vendaTotal :: Int -> Int
vendaTotal 0 = vendas 0  -- Caso base: retorna vendas da semana 0
vendaTotal n = vendas n + vendaTotal (n - 1)  -- Caso recursivo: soma vendas da semana n com vendaTotal das semanas anteriores

