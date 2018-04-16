require("minitest/autorun")
require("minitest/rg")
require_relative("../lab_classes_part_a")

class TestStudent < MiniTest::Test

  def test_name
    student = Student.new("Duncan", 21)
    assert_equal("Duncan", student.get_name())
  end
  
end
