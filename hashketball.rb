def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player_name)
  game_hash
  points = nil
  game_hash.each do |home_away, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == player_name
        points = player[:points]
        break 
      end 
    end 
  end
points
end 

def shoe_size(player_name)
  game_hash
  size = nil 
  game_hash.each do |home_away, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == player_name
        size = player[:shoe]
        break 
      end 
    end
  end 
  size 
end 

def team_colors(team_name)
  game_hash
  colors = nil
  
  game_hash.each do |home_away, team_info|
      if team_info[:team_name] == team_name
        colors = team_info[:colors]
      end 
  end
  colors 
end 

def team_names
  game_hash
  home = game_hash[:home][:team_name]
  away = game_hash[:away][:team_name]
  teams =[home, away]
end 

def player_numbers(team_name)
  game_hash
  player_numbers = []
  game_hash.each do |home_away, team_info|
    if team_info[:team_name] == team_name 
      team_info[:players].each do |player|
        player_numbers << player[:number]
      end 
    end 
  end
  player_numbers
end 

def player_stats(player_name)
  game_hash 
  stats = nil
  game_hash.each do |home_away, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == player_name 
        stats = player
      end 
    end
  end
  stats
end

def big_shoe_rebounds
  game_hash
  max_shoe = 0
  rebounds = nil
  game_hash.each do |home_away, team_info|
    team_info[:players].each do |player|
      if player[:shoe] > max_shoe
        max_shoe = player[:shoe]
        rebounds = player[:rebounds]
      end 
    end
  end
  rebounds 
end 



#extras 

def most_points_scored
  game_hash
  most_points = 0
  highest_scorer = nil
  game_hash.each do |home_away, team_info|
    team_info[:players].each do |player|
      if player[:points] > most_points
        most_points = player[:points]
        highest_scorer = player[:player_name]
      end 
    end 
  end 
  highest_scorer
end 

def winning_team
  game_hash 
  home_team = 0 
  away_team = 0 
  game_hash[:home][:players].each do |player|
    home_team += player[:points] 
  end 
  game_hash[:away][:players].each do |player|
      away_team += player[:points]
  end 
  if home_team > away_team 
    game_hash[:home][:team_name]
  elsif home_team < away_team 
    game_hash[:away][:team_name]
  elsif home_team == away_team
    "It's a tie"
  end
end 

def player_with_longest_name 
  game_hash
  longest_name = "n"
  game_hash.each do |home_away, team_info|
    team_info[:players].each do |player|
      if player[:player_name].length > longest_name.length 
        longest_name = player[:player_name]
      end 
    end 
  end 
  longest_name 
end 

def long_name_steals_a_ton
  game_hash
  player_with_longest_name 
  steals = 0
  top_steals = nil
  game_hash.each do |home_away, team_info|
    team_info[:players].each do |player|
      if player[:steals] > steals 
        steals = player[:steals]
        top_steals = player[:player_name]
      end 
    end 
  end 
  if top_steals == player_with_longest_name 
    true 
  end 
end 

    
  
  










    
  











