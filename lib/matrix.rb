

# The object that abstracts the matrix for the display.
class Matrix
  attr_accessor :cols, :rows

  COLOR_WHITE = 0
  COLOR_C = 'C'

  def initialize()
    @grid = {}
    @created = false
    @cols, @rows = 0, 0
  end

  def setPixel(pos, value)
    @grid[pos] = value
  end

  def getPixel(pos)
    return @grid[pos]
  end

  # Initial setup and also call for I (image) command
  def reset(cols, rows)

    @cols = cols.to_i.abs
    @rows = rows.to_i.abs
    @created = true;
    
    x = 0
    until x > @cols
      y = 0
      until y > @rows
        setPixel("#{x}-#{y}", COLOR_WHITE)
        y = y+1
      end
      x = x+1
    end

  end

  def show
    unless @created
      raise "The pixel matrix (image) has not been created yet. You need to pass the I command"
    end
    print "\n\n\r"
    @rows.times {print '#'}
    print "\n\n\r"

    x = 0
    @grid.each do |key, value|
      print value.to_s
      if x >= cols then
        print "\n\r"
        x = 0
      else
        x = x + 1
      end  
    end  
    
  end

  def paint(col, row, colour)
    c,r = col.to_i, row.to_i
    if @grid.has_key?("#{c}-#{r}") then
      setPixel("#{c}-#{r}", colour.to_s)
    end
  end

end
