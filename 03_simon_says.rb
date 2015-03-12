#bundle exec rspec spec/03_simon_says_spec.rb

def echo(word)
	return "#{word}"
end

def shout(input)
	return "#{input}".upcase
end

def repeat(words, times = 2)
	return ("#{words} " * times.to_i).strip
end

#puts repeat("Hello", 3)

def start_of_word(words, index)
	return words[0..index-1]
end

#puts start_of_word("hello", 2)

#return first word in the sentence

def first_word(sentence)
	 sentence.split(' ')[0]

end

#puts first_word("Hello there")

#capitalize every word in a sentence, except for little words. ALWAYS capitalize the first word.  

def titleize(sentence) 
lowercase_words = %w{a an the and but or for nor of over} #create an array with the words to look out for
	arr = sentence.split(" ")
	#x represents the index/word in arr, index represents the index in the 'to be mapped' array
	arr.each_with_index.map { |x, index| (lowercase_words.include?(x) && index > 0 ) ? x : x.capitalize}.join(' ')

end

puts titleize("war and peace")

=begin 
Fareezs-MacBook-Pro:test-first-ruby-master fareezahmed$ bundle exec rspec spec/03_simon_says_spec.rb
War and Peace

Simon says
  echo
    should echo hello
    should echo bye
  shout
    should shout hello
    should shout multiple words
  repeat
    should repeat
    should repeat a number of times
  start_of_word
    returns the first letter
    returns the first two letters
    returns the first several letters
  first_word
    tells us the first word of 'Hello World' is 'Hello'
    tells us the first word of 'oh dear' is 'oh'
  titleize
    capitalizes a word
    capitalizes every word (aka title case)
    doesn't capitalize 'little words' in a title
    does capitalize 'little words' at the start of a title

Finished in 0.00284 seconds
15 examples, 0 failures
=end
