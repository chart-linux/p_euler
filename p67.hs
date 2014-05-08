import Control.Applicative
import Data.List

foldLine :: [Integer] -> [Integer]
foldLine hList = zipWith max list1 list2
    where
        list1 = init hList
        list2 = tail hList

foldPyramid :: [[Integer]] -> Integer
foldPyramid [[x]] = x
foldPyramid pyramid = foldPyramid ((zipWith (+) (foldLine $ head pyramid) (head $ tail $ pyramid)) : (tail $ tail $ pyramid))

main = do
    temp <- foldPyramid <$> (reverse <$> (map (map read) <$> map words <$> lines <$> getContents ) :: IO [[Integer]])
    print temp
