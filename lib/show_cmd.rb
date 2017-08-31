require_relative 'Command'

# Show the matrix
class ShowCommand < Command

  def execute
	obj.show()
  end


end