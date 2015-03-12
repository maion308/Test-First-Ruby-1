class RPNCalculator
 attr_accessor  :numbers

 def initialize
 	@numbers = []
 end

 def push(value)
 	@numbers.push(value)
 end

 def plus
 	check_stack
 	first_num = @numbers.pop
 	second_num = @numbers.pop
 	@numbers.push(first_num + second_num)

 end

 def value
 	@numbers.last
 end

 def minus
 	check_stack
 	first_num = @numbers.pop
 	second_num = @numbers.pop
 	@numbers.push(second_num - first_num)
 end

 def divide
 	check_stack
 	first_num = @numbers.pop
 	second_num = @numbers.pop
 	@numbers.push((second_num.to_f)/(first_num.to_f))
 end

 def times
 	check_stack
 	first_num = @numbers.pop
 	second_num = @numbers.pop
 	@numbers.push((second_num.to_f)*(first_num.to_f))
 end

 def check_stack
 	if @numbers.length < 2
 		raise "calculator is empty"
 	end
 end

 def tokens(input)
 	#turn numbers into integers, and operations into symbols
 	operations= %w{* + - /}
 	tokens = []
 	input.split.map do |x|
 		if operations.include?(x)
 			tokens.push(x.to_sym)
 		else
 			tokens.push(x.to_i)
 		end 

 	end
 	tokens
 end

 "1"

 def evaluate(input)
 	tokenized = tokens(input) 
 	tokenized.each do |x|
	 	case x
	 	when :*
	 		times
	 	when :+
	 		plus
	 	when :-
	 		minus
	 	when :/
	 		divide	
	 	else
	 		push(x)
	 	end
 	end
 	value
 end
 	
 end
