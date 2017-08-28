require_relative 'Command'

# Draw a line
class LineCommand < Command
  
  def execute
    obj.line(@params[0], @params[1], @params[2], @params[3], @params[4])
  end

  
end