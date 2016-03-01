fib :: (Ord a, Num a) => [a] -> [a]
fib l
    | head l > 4000000 = tail l
    | otherwise = fib (sum (take 2 l) : l)

main = print (sum $ filter even $ fib [2,1])
