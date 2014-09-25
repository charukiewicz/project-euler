# Project Euler: Problem 3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

import math

factors_list = []

def prime_factors(x):
	current_guess = math.floor(math.sqrt(x))
	isPrime = True
	while current_guess > 1:
		if x % current_guess == 0:
			isPrime = False
			prime_factors(int(current_guess))
			prime_factors(int(x/current_guess))
		current_guess = current_guess - 1
	
	if isPrime == True and x not in factors_list:
		factors_list.append(int(x))
	
	return

prime_factors(600851475143)

print(factors_list)
print("Largest Prime Factor: "+str(max(factors_list)))