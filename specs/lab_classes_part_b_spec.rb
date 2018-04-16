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

  def test_set_coach
    club = Team.new("Codeclan FC",["Luis", "Ruairidh"], "Zsolt")
    club.set_coach ("Sandy")
    assert_equal("Sandy", club.coach())
  end

  def test_add_players
    club = Team.new("Codeclan FC",["Luis", "Ruairidh"], "Zsolt")
    club.add_players ("Duncan")
    assert_equal(["Luis", "Ruairidh", "Duncan"], club.players())
  end

  def test_check_players
    club = Team.new("Codeclan FC",["Luis", "Ruairidh"], "Zsolt")
    club.check_players ("Luis")
    assert_equal(true , club.check_players("Luis"))
  end

  def test_team_won
    club = Team.new("Codeclan FC", ["Luis", "Colin"], "Zsolt")
    win = club.update_team_points("win")
    assert_equal(3, win)
  end

  def test_team_lose
    club = Team.new("Codeclan FC", ["Luis", "Colin"], "Zsolt")
    lose = club.update_team_points("lose")
    assert_equal(0, lose)
  end




end
