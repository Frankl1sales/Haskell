----------------  Funamentos de Haskell ---------------------- 
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
---------------- lista de exercícios 1 -----------------------
--------------------------------------------------------------
--------------------------------------------------------------
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
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
-------------------------------------------------------------
------ Lista de exercícios extra de Haskell-------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
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
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------- Fundamentos: LISTAS --------------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
-- Exemplo do Slide 
somaLista :: [Int] -> Int
somaLista [] = 0
somaLista (x:xs) = x + somaLista xs

-- Exemplo do Slide 
multDois:: [Int] -> [Int]
multDois [] = []
multDois (x:xs) = 2*x : multDois xs
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
---------- Lista de exercícios 2 de Haskell-------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
--(1)
multLista :: Int -> [Int] -> [Int]
multLista a [] = []
multLista a (x:xs) = a*x: multLista a xs

-- (2)
--elemento :: Int -> [Int] -> Bool
elemento :: Int -> [Int] -> Bool
elemento _ [] = False
elemento a (x:xs)
    | a == x    = True
    | otherwise = elemento a xs

-- (3)
conta :: Int -> [Int] -> Int
conta _ [] = 0
conta a (x:xs)
    | a == x = 1 + conta a xs
    | otherwise = conta a xs

-- (4)
contaMaiores :: Int -> [Int]-> Int
contaMaiores _ [] = 0
contaMaiores a (x:xs)
    | a < x = 1 +contaMaiores a xs
    | otherwise = contaMaiores a xs

-- (5)
maiores :: Int -> [Int] -> [Int]
maiores _ [] = [] 
maiores a (x:xs) 
    | a < x = x : maiores a xs 
    | otherwise = maiores a xs

-- (6)
geraLista :: Int -> Int -> [Int]
geraLista 0 _ = []
geraLista m n = n :geraLista (m-1) n

-- (7)
addFim :: Int -> [Int] -> [Int]
addFim a [] = [a]
addFim a (x:xs) = x : addFim a xs

-- (8)
-- Função para concatenar duas listas
join :: [Int] -> [Int] -> [Int]
join [] ys = ys                  -- Se a primeira lista estiver vazia, retorna a segunda lista
join (x:xs) ys = x : join xs ys  -- Adiciona o primeiro elemento da primeira lista ao resultado da concatenação do restante da primeira lista com a segunda lista

-- (9)
-- Função para inverter uma lista
inverte :: [Int] -> [Int]
inverte [] = []                       -- Caso base: lista vazia
inverte (x:xs) = inverte xs ++ [x]    -- Caso geral: inverte o restante da lista e adiciona o elemento atual no final

-- (9-b)
-- Função auxiliar para acumular elementos na ordem invertida
inverteAux :: [Int] -> [Int] -> [Int]
inverteAux [] acc = acc               -- Caso base: lista vazia, retorna o acumulador
inverteAux (x:xs) acc = inverteAux xs (x:acc)  -- Adiciona o elemento atual no início do acumulador

-- Função principal para inverter uma lista
inverteB :: [Int] -> [Int]
inverteB lista = inverteAux lista []  -- Chama a função auxiliar com a lista original e um acumulador vazio
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
------ Lista de exercícios 2 extra de Haskell ----------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------
-- Função principal para testes
main :: IO ()
main = do
    putStrLn "Teste de Funções Haskell"
    putStrLn ("Palíndromo 'arara': " ++ show (palindromo "arara"))
    putStrLn ("Verifica Triângulo 3, 4, 5: " ++ show (verificaTriangulo 3 4 5))
    putStrLn ("Sinal de -10: " ++ show (sinal (-10)))
    putStrLn ("Menor entre 1, 2, 3: " ++ show (menorTres 1 2 3))
    putStrLn ("2^3: " ++ show (potencia 2 3))



