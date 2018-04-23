# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  equilateral = false
  isoceles = false
  scalene = false






if a== 0 || b==0 || c==0
  raise (TriangleError),"Sides of a triangle cannot be 0"
end

  if a<0 || b<0 || c <0
    raise (TriangleError),"Sides of a triangle cannot be negative"
  end
max = [a,b,c].max

if max == a
  if b + c <= a
    raise(TriangleError)
  end
else if max == b
       if a + c <= b
           raise (TriangleError)
       end

  else
         if b + a <= c
           raise(TriangleError)
         end
       end
end







  if a==b and b==c
    equilateral = true
  else if a==b or a==c or b==c
    isoceles = true
  else
    scalene = true
       end
  end

  if equilateral == true
    return :equilateral

  else if isoceles == true
    return :isosceles
  else
    return :scalene

  end
  end
  end
# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError


end

