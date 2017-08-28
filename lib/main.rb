
require_relative 'matrix'
require_relative 'image_cmd.rb'

# Main class form program
class Main
  attr_accessor :file
  attr_reader :matrix

  def initialize(file)
    @file = File.new(file)
    @image_cmd = ImageCommand.new
    @matrix = Matrix.new(10, 10)
  end

  def run
    parse_instructions
  end

  def parse_instructions
    @file.each_line do |line|
      case line[0].upcase
      when 'I' then @image_cmd.execute(line)
      else puts "Sorry, the command #{line[0]} is not available. Maybe in the future... "
      end
    end
  end

  def package_command(line)
    line.split(' ').each do |cmd|
      Command.new(cmd)
    end
  end
end
