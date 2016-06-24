class Array

  def deep_dup
    duped_array = Array.new(self.size)

      self.each_with_index { |x, i|
      duped_array[i] = Array.new(self[i].size)

      x.each_with_index { |z, j|
        duped_array[i][j] = self[i][j]
      }
    }
    return duped_array
  end

  def deep_dup1
    @duped_array = []

      self.each_with_index { |x, i|
        x.each_with_index { |z, j| @duped_array << self[i][j] }
      }
    return @duped_array
  end




end

arr = [ [1, 2], [3, 4] ]

# Verify their object_ids
puts arr.object_id
#=> 70349854069800
puts arr[0].object_id
#=> 70349854069960
puts arr[1].object_id
#=> 70349854069840

duper = arr.deep_dup


# Verify they are different ids
puts duper.object_id
#=> 70349854047610
puts duper[0].object_id
#=> 70349854041100
puts duper[1].object_id
#=> 70342030583020
