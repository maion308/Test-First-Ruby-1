def hello ()
	"Hello!"
end

def greet(person)
	"Hello, #{person}!"
end

=begin
	
Fareezs-MacBook-Pro:test-first-ruby-master fareezahmed$ bundle exec rspec spec/00_hello_spec.rb

the hello function
  says hello

the greet function
  says hello to someone
  says hello to someone else

Finished in 0.00081 seconds
3 examples, 0 failures
Fareezs-MacBook-Pro:test-first-ruby-master fareezahmed$ => e
	
end
=end