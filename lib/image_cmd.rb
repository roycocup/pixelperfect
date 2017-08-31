require_relative 'Command'

# Create a new M x N image with all pixels coloured white (O).
class ImageCommand < Command

  def execute
	obj.reset(@params[1], @params[2])
  end


end
