def check_palindrome(num)
	num=num.to_s()
	num=num.split('')
	i=0
	j=num.length-1
	while i<=j
		if num[i]!=num[j]
			return false
		else
			i+=1
			j-=1
		end
	end
	return true
end
j=999
i=999
output=[]
while j > 2
	i=999
	while  i>2
		if check_palindrome(j*i)
			output.push(i*j)
			break
		else
			i-=1
		end
	end
	j-=1
end
p output
p output.max