class Array


	def sum
		sum = 0
		self.map do |x| #could also do self.each since we are in the array
			sum += x
		end
		sum
	end

	def square
		square = []
		self.map do |x|
			square.push(x*x)
		end
		square

	end

	def square!
		self.map! do |x| #square! map! are saying change the original array, not copy
			x*x
		end
	end





end
