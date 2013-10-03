def calculate_sum
	sum=0
	i=1
	999.times do
		sum+=i	if i % 3==0 || i%5==0
		i+=1
	end
	sum
end
print calculate_sum