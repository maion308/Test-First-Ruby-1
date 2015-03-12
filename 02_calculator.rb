def add(num1, num2)
	
	return num1.to_i + num2.to_i

end

def subtract(num1, num2)
	
	return num1.to_i - num2.to_i
	
end

def sum(arr)
	sum = 0
	arr.each do |x|
		sum += x
	end
	return sum

end

def multiply(num1, num2)
	if ((num1 ==0 || num2 == 0))
		return 0
	else
	return num1.to_i * num2.to_i
	end
end

def power(num1, num2)
	#need to raise num1 to the num2 power
	if num2>0
		return num1 ** num2 
	elsif num2 == 0
		return 1
	else
		return  1/(num1 ** num2)
	end
		
end

def factorial(num)
	return 1 if num == 1
    return num * factorial(num-1)
end

puts factorial(3)


# bundle exec rspec spec/02_calculator_spec.rb