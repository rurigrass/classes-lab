require("minitest/autorun")
require("minitest/rg")
require_relative("../lab_classes_part_b")

class TestTeam < MiniTest::Test

  def test_name
    club = Team.new("Codeclan FC",["Luis", "Ruairidh"], "Zsolt")
    assert_equal("Codeclan FC", club.name())
  end

  def test_players
    club = Team.new("Codeclan FC",["Luis", "Ruairidh"], "Zsolt")
    assert_equal(["Luis", "Ruairidh"], club.players())
  end

  def test_coach
    club = Team.new("Codeclan FC",["Luis", "Ruairidh"], "Zsolt")
    assert_equal("Zsolt", club.coach())
  end


end
