
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

def test
  ones = get_ones
   @picture.each_with_index do |row, row_number|
     row.each_with_index do |item, col_number|
        ones.each do |found_one, found_index|

          if(row_number == found_one && col_number == found_index)

              @picture[row_number -1][col_number] = 1 unless row_number == 0 #up
              @picture[row_number +1][col_number] = 1 unless row_number >= 3 #down
              @picture[row_number][col_number -1] = 1 unless col_number == 0 #left
              @picture[row_number][col_number +1] = 1 unless col_number >= 3 #right
            
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
          [0,0,0,0],
          [0,1,0,0],
          [0,0,0,1],
          [0,0,0,0],
        ]
      )

myImage.output_image

puts 

myImage.test

myImage.output_image 
