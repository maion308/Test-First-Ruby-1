class Book
  def initialize(title = nil) #this is called when you declare Book.new
    @title = title # you're giving it a title now
  end

   def title=(new_title) #this method is called when we try to assign a value to title
    lower_title = []
    filler_words = %w{a in an the and but or for nor of over}
    new_title.split(" ").map do |word|
      if filler_words.include?(word)
        lower_title.push(word)
      else 
        lower_title.push(word.capitalize)
      end
    end
    lower_title[0] = lower_title[0].capitalize
    @title = lower_title.join(' ')
  end

  def title
    @title
  end 


end

#book = Book.new("where the red fern grows")
#puts book.title



















=begin attr_accessor :title
  
  def titliezed
	title.titlieze
  end

  private

  def titlieze
  	filler_words = %w{a an the and but or for nor of over} 
    arr = title.split(" ")
	#x represents the index/word in arr, index represents the index in the 'to be mapped' array
	arr.map { |x| (filler_words.include?(x) ) ? x  : x.capitalize}.join(' ')

  end

end

hunger_games = Book.new("Hunger Games", 247)
hunger_games.name



def translate(str)
  str.split.map { |word| translate_word(word) }.join
end

def translate_word(str)
  # Your old translate code here
end
=end