number = 600851475143
k = 1

while k < number and number != 1:
	k = k + 1
	while number % k == 0:
		number = number/k

print(k)