require 'test/unit/testsuite'
require 'test/unit/ui/console/testrunner'
require_relative 'tc_initial_tests.rb'
require_relative 'tc_command_tests.rb'

class TS_All_Tests

  def self.suite
	suite = Test::Unit::TestSuite.new
	suite << TC_InitialTests.suite
	suite << TC_CommandTests.suite
	return suite
  end

end

Test::Unit::UI::Console::TestRunner.run(TS_All_Tests)