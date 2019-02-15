class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def modify(do_thing)
    @contents = do_thing.do(@contents)
  end

end

## Extracted Classes
## Note that I felt that the the coding and decoding should be tightly linked
## so that any change in the coding would be mirrored in the decoding

class Scramble
  def initialize(contents,steps,operator = "+")
    @contents = contents
    @steps = steps
    @operator = operator
  end

  def do(contents)
    plain_chars = @contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord.send(@operator, @steps)).chr
    end
    @contents = scrambled_chars.join
  end
end

class UnScramble < Scramble
  def initialize(contents,steps,operator = "-")
    @contents = contents
    @steps = steps
    @operator = operator
  end
end

class Reverse
  def initialize(contents)
    @contents = contents
  end

  def do(contents)
    @contents.reverse
  end
end

class UnReverse < Reverse
  
end


text = 'text is this'
puts text
s = ScrambledDiary.new(text)
s.read

p 'Reversing'
s.modify(Reverse.new(s.read))
p "Text is now --#{s.read}"

p 'Un-Reversing'
s.modify(UnReverse.new(s.read))
p "Text is now --#{s.read}"

p 'Scrambling'
s.modify(Scramble.new(s.read,5))
p "Text is now --#{s.read}"

p 'UnScrambling'
s.modify(UnScramble.new(s.read,5))
p "Text is now --#{s.read}"

