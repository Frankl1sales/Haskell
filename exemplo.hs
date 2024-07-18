quadrado :: Int -> Int -- funcao que eleva num
quadrado x = x * x -- ao quadrado

mini :: Int -> Int -> Int --funcao que mostra
mini a b --o menor entre
 | a <= b = a -- dois valores
 | otherwise = b

-- Definição corrigida da função maiorDeIdade
maiorDeIdade :: Int -> Bool
maiorDeIdade a
  | a >= 18   = True
  | otherwise = False

-- Definição corrigida da função tresIguais
tresIguais :: Int -> Int -> Int -> Bool
tresIguais a b c = a == b && b == c


