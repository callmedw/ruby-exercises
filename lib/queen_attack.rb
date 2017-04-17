class Array
  define_method(:queen_attack?) do |target|
    in_line = false
    if self[1].==(target[1])
      in_line = true
    elsif self[0].==(target[0])
      in_line = true
    elsif self[0].-(target[0]).==(self[1].-(target[1]))
      in_line = true
    end
    in_line
  end
end
