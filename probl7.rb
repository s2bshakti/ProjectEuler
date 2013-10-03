def is_prime(num)
	j=2
	while j < num
		return false if num%j==0
		j+=1
	end
	return true
end
count=10000
i=104729
while count <=10001
	count+=1 if is_prime(i)
	i+=2	
	p count
	p i
end
p i