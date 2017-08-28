require_relative 'Command'

# Draw a line
class LineCommand < Command
  
  def execute
    obj.line(from, to, color)
  end

  
end