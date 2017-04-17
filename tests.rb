# copy any methods here into IRB for testing
# ping-pong method
class Fixnum
  define_method(:pingpong) do
    array = []
    number = self
    if number.<(0)
      number = number.abs()
    end
    index = 1
    number.times() do
      if index.%(3).==(0)
        array.push("ping")
      else
        array.push(index)
      end
      index = index.+(1)
    end
    array
  end
end
