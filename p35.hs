import Debug.Trace

prime :: [Int]
prime = f [2] [3,5 ..]
    where
        f xs [] = xs
        f xs (y:ys) = f (y:xs) (filter (\z -> z `mod` y /= 0 ) ys)

main = do
   print $ take 100 prime 
