

# The object that abstracts the matrix for the display.
class Matrix
  attr_accessor :cols, :rows, :grid

  COLOR_WHITE = 0

  def initialize(cols, rows)
    @cols = cols
    @rows = rows
    @grid = {}
    init_grid
  end

  def init_grid
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

  def setGrid(pos, value)
    @grid[pos] = value
  end

  def getGrid(pos)
    return @grid[pos]
  end

end
