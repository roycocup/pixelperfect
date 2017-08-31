require_relative 'Command'

# C - Clears the table, setting all pixels to white (O).
class ClearCommand < Command

  def execute
	obj.clear
  end


end
