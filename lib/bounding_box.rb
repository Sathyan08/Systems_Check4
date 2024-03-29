class BoundingBox
  attr_reader :width, :height, :left, :right, :top, :bottom

  def initialize(left, bottom, width, height)
    @left     = left
    @bottom   = bottom
    @width    = width
    @height   = height
    @right    = left + width
    @top      = bottom + height
  end

  def contains_point?(x,y)
    x >= @left && x <= @right && y >= @bottom && y <= @top
  end
end
