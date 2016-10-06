
prod (x,y,z) = x * y * z

main = print $ prod $ head [ (x, y, z) | x <- [1..996], y <- [(x + 1)..997], let z = 1000 - x - y, x^2 + y^2 == z^2 ]
