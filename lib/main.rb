require_relative 'matrix'
require_relative 'image_cmd.rb'
require_relative 'show_cmd.rb'
require_relative 'paint_cmd.rb'
require_relative 'vline_cmd.rb'
require_relative 'hline_cmd.rb'
require_relative 'clear_cmd.rb'

# Main class form program
class Main
  attr_accessor :file
  attr_reader :matrix

  def initialize(file)
	@file = File.new(file)
	@matrix = Matrix.new
  end

  def run
	unless File.empty?(@file)
	  @file.each_line do |line|
		line = line.to_s

		if line.strip.length < 1
		  next
		end

		case line[0].upcase
		  when 'C' then
			ClearCommand.new(line, @matrix)
		  when 'I' then
			ImageCommand.new(line, @matrix)
		  when 'S' then
			ShowCommand.new(line, @matrix)
		  when 'L' then
			PaintCommand.new(line, @matrix)
		  when 'V' then
			VLineCommand.new(line, @matrix)
		  when 'H' then
			HLineCommand.new(line, @matrix)
		  else
			puts "Sorry, the command #{line[0]} is not available. Maybe in the future... "
		end
	  end
	  return true
	end
	raise 'File is empty'
  end


end
