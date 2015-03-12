# bundle exec rspec spec/05_silly_blocks_spec.rb

def reverser
	x = yield.split
	x.map { |y| y.reverse  }.join(' ')
end

def adder(num=1)
	yield + num
end

def repeater(num=1)
    for i in (1..num) do
        yield
    end
end
=begin 

Dear evaluator: I was able to get the correct answer but would appreciate if you could send me some further reading on this:
Fareez.Ahmed@gmail.com

Thanks!

some silly block functions
  reverser
    reverses the string returned by the default block
    reverses each word in the string returned by the default block
  adder
    adds one to the value returned by the default block
    adds 3 to the value returned by the default block
  repeater
    executes the default block
    executes the default block 3 times
    executes the default block 10 times

Finished in 0.00299 seconds
7 examples, 0 failures

def reverser(words)
	words.split.map{ |x| x.reverse }.join(' ')
end


puts reverser("hello dolly")

reverser{
	"hello dolly"
}

yield ("hello dolly")
=begin
getting a failutre on the reverser, but it seems to be working fine!
attempt #1 below seems to small to break down this much; trying again in one function above.
def reverser_word(string)
	string.reverse
end

def reverser(sentence)
	sentence.split.map{ |word| reverser_word(word)}.join(' ')
end

puts reverser("hello dolly")
=end