import qualified Data.Set as Set
import qualified Data.List as List

f n m = if mod n m == 0  then True else False
g n = filter (f n) ([1 .. (truncate(sqrt (fromIntegral n)))])
h n = (g n) ++ (filter (i n) (map (div n) (g n)))
i n m = if m == (div n m) || n == m then False else True
j n = sum (h n)
k n = if (j n) > n then True else False
l n = filter k [1 .. n]
--(l n) : return the List of "abundant numbers" that are less than "n" or equal to "n"

ff :: [Int] -> [Int] -> [Int] -- list1 : [1 .. n], list2 : (l n)
ff list1 [] = list1
ff list1 list2 = ff 
	(
		(filter (\x -> x <= (head list2)) list1) ++
		(map
			(\x -> x + (head list2))
			(filter (`notElem` list2) (filter (\x -> x > 0) (map (\x -> x - (head list2)) list1)))
		)
	)
	(tail list2)

main = print (foldr (+) 0 (ff [1 .. 28123] (l 28123)))