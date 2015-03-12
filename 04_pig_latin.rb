
# bundle exec rspec spec/04_pig_latin_spec.rb


def translate_word(word)
	vowels = 'aeiouAEIOU'
	consonants = 'BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz'
	if ((consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2]) ) || word[1..2] == 'qu')
		return word.slice(3, word.length) + word[0] + word[1] + word[2]  + "ay"
		
	elsif ((consonants.include?(word[0]) && consonants.include?(word[1]))|| word[0..1] == 'qu')
		return word.slice(2, word.length) + word[0] + word[1] + "ay"
	
	elsif consonants.include?(word[0])
		return word.slice(1, word.length) + word[0] + "ay"
		
	else return "#{word}" + "ay"

	end
end

def translate(sentence)
	sentence.split.map { |word| translate_word(word) }.join(' ')

end

puts translate("square")


=begin 

will use include

Since you already know how to translate a single word why not just split up the task into two methods:

def translate(str)
  str.split.map { |word| translate_word(word) }.join
end

def translate_word(str)
  # Your old translate code here
end

vowels.include?(letter)
like .indexOf in js, without == numerical value
=> true

vowels = ['a', 'e']
puts vowels.include?('a') = true

my_string = "abcdefg"
if my_string.include? "cde"
   puts "String includes 'cde'"
end

Fareezs-MacBook-Pro:test-first-ruby-master fareezahmed$ bundle exec rspec spec/04_pig_latin_spec.rb
aresquay

#translate
  translates a word beginning with a vowel
  translates a word beginning with a consonant
  translates a word beginning with two consonants
  translates two words
  translates a word beginning with three consonants
  counts 'sch' as a single phoneme
  counts 'qu' as a single phoneme
  counts 'qu' as a consonant even when it's preceded by a consonant
  translates many words

Finished in 0.0029 seconds
9 examples, 0 failures
=end

