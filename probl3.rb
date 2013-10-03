num=600851475143
j=2
while j < num
	if num%j==0
		num/=j
	else
		j+=1
	end
end
print num