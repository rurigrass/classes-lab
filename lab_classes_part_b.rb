
class Team

attr_accessor(:name, :players, :coach)

def initialize(name, players, coach)
  @name = name
  @players = players
  @coach = coach
  @points = 0
end

# def name()
#   return @name
# end
#
# def players()
#   return @players
# end
#
# def coach()
#   return @coach
# end

def set_coach(new_name)
  return  @coach = new_name
end

def add_players(new_player)
  return  @players.push(new_player)
end

def check_players(find_player)
  return @players.include?(find_player)
end

def update_team_points(win_or_lose)
   result = {
     "win" => 3,
     "lose" => 0
   }
   @points += result[win_or_lose]
   
  end

end
