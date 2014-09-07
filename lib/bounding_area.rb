require 'pry'

class BoundingArea
  attr_reader :array_of_bounding_boxes

  def initialize(array_of_bounding_boxes)
    @array_of_bounding_boxes = array_of_bounding_boxes
  end

  def contains_point?(x, y)
    @array_of_bounding_boxes.any? {|bounding_box| bounding_box.contains_point?(x, y)}
  end
end

# class BoundingBox
#   attr_reader :width, :height, :left, :right, :top, :bottom

#   def initialize(left, bottom, width, height)
#     @left     = left
#     @bottom   = bottom
#     @width    = width
#     @height   = height
#     @right    = left + width
#     @top      = bottom + height
#   end

#   def contains_point?(x,y)
#     x >= @left && x <= @right && y >= @bottom && y <= @top
#   end

# end


# bottom_rect = BoundingBox.new(0.0, 0.0, 2.0, 1.0)
# top_rect = BoundingBox.new(2.0, 1.0, 3.0, 4.0)

# area = BoundingArea.new([bottom_rect, top_rect])
# p area.contains_point?(0.5, 0.5)
