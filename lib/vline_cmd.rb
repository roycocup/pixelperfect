require_relative 'Command'

# Draw a line on a specific column
class VLineCommand < Command
  
  def execute
		colour = @params[4]

    rows = (@params[2] .. @params[3]).to_a
		num_rows = rows.count
		col = @params[1]
		# create as many duplications of cols as rows.count
		cols = [col].cycle(num_rows).to_a

		points = []

		num_rows.times do |i|
	  	points[i] = [cols[i], rows[i]]
		end

    obj.line(points, colour)
  end

  
end