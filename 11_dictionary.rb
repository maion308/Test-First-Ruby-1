class Dictionary 
  
  def initialize
    @d = {}
  end
  
  def entries
    @d
  end
  
  def keywords
    @d.keys.sort
  end
  
  def add( options )
    if options.instance_of?(Hash)
      options.each do | key, value | 
        @d[key] = value
      end
    else
      @d[options] = nil
    end
  end
  
  def include?( x )
    @d.include?( x )
  end
  
  def printable
    @d.sort.map do | key, value |
      "[#{key}] \"#{value}\""
    end.join("\n")
  end
  
  def find(prefix)
		
    found = {}
		
    @d.each do |key, value|
      if key.start_with?( prefix )
        found[key] = value
      end
    end
		
    found
  end
  
end
