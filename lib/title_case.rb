class String
  define_method(:title_case) do
    output_array = []
    word_array = self.split(" ")
    word_array.each() do |word|
        output_array.push(word.capitalize())
    end
    output_array.join(" ")
  end
end
