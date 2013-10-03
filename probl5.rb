def divisible(content,j)
	for i in content
		return true if i%j ==0
	end
	return false
end
def operation(content,j)
	i=0
	while i <= content.length-1
		content[i]/=j if content[i]%j ==0
		i+=1
	end
end
content=[]
20.times do |i|
	content.push(i+1)
end
content.delete(1)
j=2
output=[]
while j < 21
	if divisible(content,j)
		operation(content,j)
		output.push(j)
	else
		j+=1
	end
end
result=1
output.each do |i|
	result*=i
end
p result
