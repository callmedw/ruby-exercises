class String
  define_method(:leetspeak) do
    words = self.split(" ")
    leet_words = []
    words.each() do |word|
      letters = word.split("")
      leet_letters = []
      letters.each_with_index() do |letter,index|
        if letter.downcase().eql?("e")
          leet_letters.push(3)
        elsif letter.downcase().eql?("o")
          leet_letters.push(0)
        elsif letter.eql?("I")
          leet_letters.push(1)
        elsif letter.downcase().eql?("s").&(index.!=(0))
          if letter.eql?("S")
            leet_letters.push("Z")
          else
            leet_letters.push("z")
          end
        else
          leet_letters.push(letter)
        end
      end
      leet_words.push(leet_letters.join(""))
    end
    leet_words.join(" ")
  end
end
