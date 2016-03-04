isPalindrome :: (Show a) => a -> Bool
isPalindrome n = show n == reverse (show n)

threeDigitProducts = [ x*y | x <- [100..999], y <- [999,998..100]]

main = print $ maximum $ filter isPalindrome threeDigitProducts
