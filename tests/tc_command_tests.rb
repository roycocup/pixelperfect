require 'test/unit'
require_relative '../lib/main.rb'

class TC_CommandTests < Test::Unit::TestCase

  def setup
  end

  def teardown
	File.delete(@file)
  end


  def init_main(content)
	# setup the commands file
	@filename = Time.now.to_i.to_s + '.txt'
	f = File.new(@filename, "w+")
	f.write(content.to_s)
	f.close

	# construct the main class
	@main = Main.new(@filename)
	@file = @main.file
  end


  # TESTS

  def test_unknown_command_test_responds_with_sorry_msg
	init_main('A 5 4 2 3')

	$stdout = StringIO.new
	@main.run

	assert_match(/Sorry/, $stdout.string)
  end

  def test_command_clear_before_creation
	init_main('C')

	assert_raise RuntimeError, LoadError do
	  @main.run()
	end
  end

  def test_returns_true_if_Image_command_first
	init_main('I 10 10')

	assert_nothing_thrown do
	  @main.run
	end

	assert(@main.run)
  end

  def test_matrix_has_cols_and_rows
	init_main('I 12 10')
	@main.run
	assert_instance_of(Matrix, @main.matrix)
	assert_equal 12, @main.matrix.cols
	assert_equal 10, @main.matrix.rows
  end

  def test_one_pixel_is_painted
	init_main("I 10 10\nL 1 3 A ")

	$stdout = StringIO.new
	@main.run

	assert_not_match(/Sorry/, $stdout.string)

	assert_equal('A', @main.matrix.get_pixel('1-3'))

  end

  # def test_clear_has_matrix_cleared
  #
  # end


end

