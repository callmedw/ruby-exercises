# copy any methods here into IRB for testing
# ping-pong method
class Fixnum
  define_method(:pingpong) do
    array = []
    number = self
    if self.<(0)
      number.abs()
    end
    index = 1
    self.times() do
      array.push(index)
      index = index.+(1)
    end
    array
  end
end
