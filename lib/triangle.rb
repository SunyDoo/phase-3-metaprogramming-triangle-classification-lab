class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a=side_a
    @side_b=side_b
    @side_c=side_c
    if side_a >= (side_b + side_c) || side_b >= (side_a + side_c) || side_c >= (side_a + side_b)
      raise TriangleError
    end

    if side_a <= 0 || side_b <= 0 ||side_c <= 0
      raise TriangleError
    end

    if side_a == nil || side_b == nil ||side_c == nil
      raise TriangleError
    end     
  end

  def kind
    if self.side_a==self.side_b && self.side_b==self.side_c
      return :equilateral
    elsif self.side_a==self.side_b || self.side_b==self.side_c || self.side_a==self.side_c
      return :isosceles 
    else
      return :scalene
    end
  end
    

  class TriangleError < StandardError
    def message
      "This is not a valid triangle."
    end
  end
end
