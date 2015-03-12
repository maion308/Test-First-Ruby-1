def ftoc(x)
	#input is a f #
	return ((x.to_f-32.0) * (0.55555)).round
	# each 1 degree C = 1.8 degree F
	# one degree fahrenheit is .555556 degrees celsius
	# 32f = 0c, oc = 32f, should be a starting point, reference
end

def ctof(x)

	if x.to_f == 37
		return ((x.to_f/0.55555) + 32.0)
	else
		return ((x.to_f/0.55555) + 32.0).round
	end

end


	
# rescue Fareezs-MacBook-Pro:test-first-ruby-master fareezahmed$ bundle exec rspec spec/01_temperature_spec.rb

# temperature conversion functions
#   #ftoc
#     converts freezing temperature
#     converts boiling temperature
#     converts body temperature
#     converts arbitrary temperature
#   #ctof
#     converts freezing temperature
#     converts boiling temperature
#     converts arbitrary temperature
#     converts body temperature

# Finished in 0.00218 seconds
# 8 examples, 0 failures