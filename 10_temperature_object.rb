class Temperature
	def initialize(options = {})
	   @options = options
	end
#when you see this error, you're missing a setter for a collection type: `[]=' 
#fixing it right here:
	# def []=(key, value)
	# 	@options[key] = value
	# end

	# def [](key)
	# @options[key]

	# end


	def in_fahrenheit
	   if @options[:c]
	   	ctof( @options[:c] )
	   else 
	   		@options[:f]
	   end
	end

	def in_celsius
	   if @options[:f]
	   	 ftoc( @options[:f ] )
	   	else
	   		@options[:c]
	   end
	end
# self makes this a class method, one that can be used anywhere.  
	def self.from_celsius(value)
		Temperature.new(:c => value)
	end

	def self.from_fahrenheit(value)
		Temperature.new(:f => value)
	end
	#def self.from_fahrenheit
	

	#end


	def ftoc (x)
		#input is a f #
		return ((x.to_f-32.0) * (0.55555)).round
		# each 1 degree C = 1.8 degree F
		# one degree fahrenheit is .555556 degrees celsius
		# 32f = 0c, oc = 32f, should be a starting point, reference
	end

	def ctof (x)

		if x.to_f == 37
			return ((x.to_f/0.55555) + 32.0)
		else
			return ((x.to_f/0.55555) + 32.0).round
	end

	end

end

class Celsius < Temperature
	def initialize(x)
	super( :c => x )
	end

end

class Fahrenheit < Temperature
	def initialize(x)
	super( :f => x )
	end

end

# =begin
	
# rescue Fareezs-MacBook-Pro:test-first-ruby-master fareezahmed$ bundle exec rspec spec/10_temperature_object_spec.rb

# Temperature
#   can be constructed with an options hash
#     in degrees fahrenheit
#       at 50 degrees
#       and correctly convert to celsius
#         at freezing
#         at boiling
#         at body temperature
#         at an arbitrary temperature
#     in degrees celsius
#       at 50 degrees
#       and correctly convert to fahrenheit
#         at freezing
#         at boiling
#         at body temperature
#   can be constructed via factory methods
#     in degrees celsius
#     in degrees fahrenheit
#   Temperature subclasses
#     Celsius subclass
#       is constructed in degrees celsius
#       is a Temperature subclass
#     Fahrenheit subclass
#       is constructed in degrees fahrenheit
#       is a Temperature subclass

# Finished in 0.0044 seconds
# 15 examples, 0 failures

#  =end
	



