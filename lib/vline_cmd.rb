require_relative 'Command'
require 'rubygems'
require 'vector2d'

# Draw a line
class VLineCommand < Command
  
  def execute
    x1 = @params[1]
    x2 = @params[1]
    y1 = @params[2]
    y2 = @params[3]
    colour = @params[4]

    v1 = vector2d(x1, y1)
    v2 = vector2d(x2, y2)

    obj.line(v1, v2, colour)
  end

  
end