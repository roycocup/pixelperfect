require_relative 'Command'

# Create a new M x N image with all pixels coloured white (O).
class ShowCommand < Command
  
  def execute
    obj.show()
  end

  
end