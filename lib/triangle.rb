require 'pry'
class Triangle
  attr_accessor :length_a, :length_b, :length_c, :kind 
   
   def initialize(length_a, length_b, length_c)
      @length_a = length_a
      @length_b = length_b
      @length_c = length_c
       
   end 

   def kind
    if (length_a * length_b * length_c) == 0 || (length_a + length_b) <= length_c || (length_b + length_c) <= length_a || (length_c + length_a) <= length_b 
      
    begin                             
        raise TriangleError
      end

    elsif
      length_a == length_b && length_a == length_c && length_b == length_c
      self.kind = :equilateral 
    elsif
      length_a == length_b || length_a == length_c || length_b == length_c
      self.kind = :isosceles
    else 
      self.kind = :scalene
    end
  end
 

  class TriangleError < StandardError
    def message
      puts "Not a triangle"
    end 
  end 
end       
 


