def prime_divisor(num):
	i=2
	output=[]
	while i < num:
		if num % i == 0 and is_prime(i):
			output.append(i) 
		i+=1
	print max(output)
def is_prime(num_p):
	if num_p==2:
		return 1
	i=2
	while i < num_p:
		if num_p % i==0:
			return 0 
		i+=1
	return 1
prime_divisor(600851475143)
