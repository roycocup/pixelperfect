require_relative 'Command'

# Paint one pixel with a specific colour
class PaintCommand < Command
  
  def execute
    obj.paint(@params[1], @params[2], @params[3])
  end

  
end