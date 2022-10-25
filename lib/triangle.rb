class Triangle
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if @length1 <= 0 || @length2 <= 0 || @length3 <= 0
      raise TriangleError
    elsif @length1 + @length2 <= @length3 || @length1 + @length3 <= @length2 || @length2 + @length3 <= @length1
      raise TriangleError
    elsif @length1 == @length2 && @length2 == @length3
      @kind = :equilateral
    elsif @length1 == @length2 || @length1 == @length3 || @length2 == @length3
      @kind = :isosceles 
    else @length1 != @length2 && @length2 != @length3
      @kind = :scalene
    end
  end

  class TriangleError < StandardError
    def message
      puts "Not a valid triangle!"
    end
  end
end
