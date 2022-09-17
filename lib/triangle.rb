
class Triangle

  attr_reader:kind
  

  def initialize(s1, s2, s3)
    @s1=s1
    @s2=s2
    @s3=s3    
  end

  def kind
    if @s1<=0 || @s2<=0 || @s3<=0 
        raise TriangleError
        TriangleError.message
    elsif @s1+@s2<=@s3 || @s2+@s3<=@s1 || @s1+@s3<=@s2
      raise TriangleError
        TriangleError.message
      elsif @s1==@s2 && @s2==@s3
      :equilateral
      elsif
        @s1-@s2==0 || @s1-@s3==0
        :isosceles
      elsif @s2-@s3==0 || @s2-@s1==0
        :isosceles
      elsif @s1!=@s2 && @s1!=@s3 && @s3!=@s2
        :scalene
      elsif @s2!=@s3 && @s1!=@s3 && @s1!=@s2
        :scalene  
      end
  end

  class TriangleError < StandardError
    def message
      "Viable Triangle Please"
      end
  end
end

# puts Triangle.new(4, 4, 4).kind
# puts Triangle.new(3, 4, 5).kind
# puts Triangle.new(4, 4, 3).kind

# puts Triangle.new(0, 0, 0).kind
# puts Triangle.new(-3, 4, 6).kind

# Triangle.new(2, 4, 2).kind