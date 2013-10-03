def calculate_sum_fibonacci
	sum=2
	num1=1
	num2=2
	present_number=0
	while  present_number < 4000000
		present_number=num1+num2 
		sum+=present_number if present_number %2==0
		num1=num2
		num2=present_number
	end	
	sum
end
print calculate_sum_fibonacci