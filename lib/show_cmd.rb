require_relative 'Command'

# Create a new M x N image with all pixels coloured white (O).
class ShowCommand < Command
  
  def initialize(statement, obj)
    @obj = obj
    @raw_cmd = statement
    parse_cmd
    execute
  end

  def parse_cmd
    @params = []
    @raw_cmd.split(' ').each do |char|
      @params.push(char)
    end
    puts @params
  end

  def execute
    obj.reset(@params[1], @params[2])
  end

  
end