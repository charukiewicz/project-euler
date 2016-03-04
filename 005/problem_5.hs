isDivisibleAux :: (Integral a) => a -> a -> Bool
isDivisibleAux n x
    | x > 20 = True
    | n `mod` x /= 0 = False
    | otherwise = isDivisibleAux n (x + 1)

isDivisible :: (Integral a) => a -> Bool
isDivisible n = isDivisibleAux n 1

-- The secret sauce here is to map the product of all primes between
-- 1 and 20 to the list of values we are testing (massive speedup)
main = print $ head $ filter isDivisible $ map (*(2*3*5*7*11*13*17*19)) [1..]
