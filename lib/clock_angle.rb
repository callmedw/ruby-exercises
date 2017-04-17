class String
  define_method(:get_angle) do
    time_array = self.split(":");
    time_array[0] = time_array[0].to_f()
    time_array[1] = time_array[1].to_f()
    time_array[1].+(time_array[0].*(60))
  end
end
