require_relative 'Command'

# Draw a line on a specific row
class HLineCommand < Command

  def execute
	colour = @params[4]

	cols = (@params[1] .. @params[2]).to_a
	num_cols = cols.count
	row = @params[3]
	# create as many duplications of cols as rows.count
	rows = [row].cycle(num_cols).to_a

	points = []

	num_cols.times do |i|
	  points[i] = [cols[i], rows[i]]
	end

	obj.line(points, colour)
  end


end