

# The object that abstracts the matrix for the display.
class Matrix

  COLOR_WHITE = 0
  COLOR_C = 'C'

  def initialize()
    @grid = {}
    @created = false;
  end

  def setGrid(pos, value)
    @grid[pos] = value
  end

  def getGrid(pos)
    return @grid[pos]
  end

  def execute(command)
	  command.execute()
  end

  # Initial setup and also call for I (image) command
  def reset(cols, rows)
    @cols = cols.to_i
    @rows = rows.to_i
    @created = true;
    
    x = 0
    until x > @cols
      y = 0
      until y > @rows
        setGrid("#{x}-#{y}", COLOR_WHITE)
        y = y+1
      end
      x = x+1
    end

  end

end
