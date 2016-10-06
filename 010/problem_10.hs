-- These functions have been copied from my solution to
-- problem 3. isPrimeAux is slightly optimized, but they
-- are still very slow. (Solution took over 22 mins on
-- low-spec server)

-- Auxiliary function to calculate prime-ness
-- Recursively checks modulus of all numbers up to input
isPrimeAux :: Int -> Int -> Bool
isPrimeAux x n
    | x == 1 = False
    | x < n^2 = True
    | otherwise = (x `mod` n /= 0) && isPrimeAux x (n + 1)

-- Wrapper function, passes input value to isPrimeAux
isPrime :: Int -> Bool
isPrime x = isPrimeAux x 2

main = print $ sum $ filter isPrime [1..2000000]
