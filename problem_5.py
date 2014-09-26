# Project Euler: Problem 5
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

hit = False
test = 1
while(hit == False):
	test += 1
	for i in range(1,11):
		print("testing "+str(test)+" against "+str(i))
		if test % i == 0:
			hit = True
		else:
			hit = False
			break

print(test)
