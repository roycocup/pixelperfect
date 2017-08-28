
require_relative 'matrix'
require_relative 'image_cmd.rb'

# Main class form program
class Main
  attr_accessor :file
  attr_reader :matrix

  def initialize(file)
    @file = File.new(file)
    @matrix = Matrix.new
  end

  def run
    
    @file.each_line do |line|
      case line[0].upcase 
      when 'I' then ImageCommand.new(line, @matrix)
      else puts "Sorry, the command #{line[0]} is not available. Maybe in the future... "
      end
    end

  end

end
