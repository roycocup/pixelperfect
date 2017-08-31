require 'test/unit'
require_relative '../lib/main.rb'

class TC_InitialTests < Test::Unit::TestCase

  def setup
	@filename = 'mockfile.txt'
	@file = File.new(@filename, "a+")
	@main = Main.new(@file)
  end

  def teardown
	File.delete(@file)
  end


  def test_suite_is_working()
	assert(true, 'Assertion was false.')
  end

  def test_main_is_created
	assert_instance_of Main, @main
  end

  def test_matrix_ready
	assert(@main.respond_to?(:matrix), "Matrix attribute does not exist in Main class")
	assert_instance_of(Matrix, @main.matrix, "Matrix attr exists but of type Matrix")
  end

  def test_empty_file_raises_error
	assert_raise RuntimeError do
	  @main.run()
	end
  end

end

