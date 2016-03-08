-- Auxiliary function to calculate prime-ness
-- Recursively checks modulus of all numbers up to input
isPrimeAux :: Int -> Int -> Bool
isPrimeAux x n
    | x == 1 = False
    | x == n = True
    | otherwise = (x `mod` n /= 0) && isPrimeAux x (n + 1)

-- Wrapper function, passes input value to isPrimeAux
isPrime :: Int -> Bool
isPrime x = isPrimeAux x 2

primes = filter isPrime [1..]

main = print $ primes !! 10000
