
class Image 

  def initialize(imageArray)
    @picture = imageArray;

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
