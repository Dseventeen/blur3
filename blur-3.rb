class Image 
  def initialize(imageArray)
    @picture = imageArray;
  end

def get_ones
   ones = []
   @picture.each_with_index do |row, row_number|
     row.each_with_index do |item, col_number|
   
        if(item == 1)
          ones << [row_number, col_number]

        end
     end
   end
return ones
end



def manhattan_distance(x1, y1, x2, y2)
  horizontal_distance = (x2 -x1).abs
  vertical_distance  = (y2 -y1).abs

  return horizontal_distance + vertical_distance
end


def getDistance(distance)
  ones = get_ones

   @picture.each_with_index do |row, row_number|
     row.each_with_index do |item, col_number|
        ones.each do |found_one, found_index|
          if manhattan_distance(col_number, row_number, found_index, found_one) <= distance
            @picture[row_number][col_number] = 1
          end
          end
     end
   end
end

  def output_image
    @picture.each do |img|
      puts img.join
    end
  end

end


myImage = Image.new(
        [
          [0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0],
          [0, 1, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 1]
        ]
      )

#orginal image
myImage.output_image
puts 


myImage.getDistance(1)
myImage.output_image 
