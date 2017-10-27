require_relative './config/environment.rb'
require 'pry'
require 'terminal-table'
class NflStatChecker
  input_array = ARGV
  def self.run_program
    puts 'Welcome to the NFL stats checker and game prediction app!'
    puts "Would you like you access [stats], or make two teams [battle] it out?"
    action = gets.chomp
    choose_first(action)
  end

  def self.choose_first(action)
      if  action == "stats"
        puts "Do you want to know the stat of a player, a team, or a coach?"
        action = gets.chomp
        choose_which(action)
      elsif  action == "battle"
          puts "Let's Battle it out! Who is the home team and away team?"
          action = gets.chomp
          lets_battle_home(action)
      else
        puts "Not sure what you mean...type in 'stats' to look for statistics of coaches, players, and teams."
        puts "Or type in 'battle' to see who would win a game if two teams played!"
        action = gets.chomp
        not_sure_second(action)
      end
    end

    def self.not_sure_second(action)
      if  action == "stats"
        puts "Do you want to know the stat of a player, a team, or a coach?"
        action = gets.chomp
        choose_which(action)
      elsif  action == "battle"
          puts "Let's Battle it out! Who is the home team?"
          lets_battle_home(action)
      else
        puts "Still have no idea what you want..."
        puts "Type in 'stats' to look for to look for statistics of coaches, players, and teams."
        puts "Or type in 'battle' to see who would win a game if two teams played!"
        action = gets.chomp
        not_sure_third(action)
      end
    end

    def self.not_sure_third(action)
      if  action == "stats"
        puts "Do you want to know the stat of a player, a team, or a coach?"
        action = gets.chomp
        choose_which(action)
      elsif  action == "battle"
          puts "Let's Battle it out! Who is the home team?"
          lets_battle_home(action)
      else
        puts 'THAT`S IT!!! I`M LEAVING!'
        exit(0)
      end
    end

    def self.choose_which(action)
      if action == "coach"
        puts "Alright, do you know the coach's full name?"
        action = gets.chomp
        coach_full_name?(action)
      elsif action == "player"
        puts "Alright, do you know the player's full name?"
        action = gets.chomp
        player_full_name?(action)
      elsif action == "team"
        puts "Alright, which team?"
        action = gets.chomp
        team_name?(action)
      end
    end
#=========================================================================#
    def self.coach_full_name?(action)
      if action == "yes"
        puts "Cool, what's his full name?"
        rake = gets.chomp
        name_full_coach(rake)
      elsif action == "no"
        puts "That's alright, do you know his last_name?"
        action = gets.chomp
        coach_last_name?(action)
      end
    end

    def self.name_full_coach(n)
      split_name = n.downcase.split
      c_first_n = "#{split_name[0]}"
      c_last_n = "#{split_name[1]}"
        Coach.all.each do |x|
          if x.first_name.downcase == c_first_n && x.last_name.downcase == c_last_n

            puts "Found him, these are his stats:"
            puts Coach.coach_table("#{n.upcase}")
            puts "Is there any other coach you would like me to look for?"
            action = gets.chomp
            no_new_coach?(action)
          else
            puts "Sorry, can't find him. Is there any other coach you would like me to look for?"
            action = gets.chomp
            no_new_coach?(action)
          end
        end
      end


    def self.coach_last_name?(action)
      if action == "yes"
        puts "Sweet, what's his last name?"
        action = gets.chomp
        last_name_coach(action)
      elsif action == "no"
        puts "That's fine, do you know his first_name?"
        action = gets.chomp
        coach_first_name?(action)
      end
    end

    def self.coach_first_name?(action)
      if action == "yes"
        puts "Nice, what's his first name?"
        action = gets.chomp
        first_name_coach(action)
      elsif action == "no"
        puts "Oh boy. Well, do you know his team?"
        action = gets.chomp
        team_coach(action)
      end
    end

    def self.team_coach(action)
      if action == "yes"
        puts "Finally, what's his team?"
        action = gets.chomp
        team_coach_locate(action)
      elsif action == "no"
        puts "Come back when you do. Do you want to go back to the main menu?"
        action = gets.chomp
        main_menu_return(action)
      end
    end


      def self.last_name_coach(action)
        split_name = action.downcase.split
        c_first_n = "#{split_name[0]}"
        c_last_n = "#{split_name[1]}"
          Coach.all.each do |x|
            if x.first_name.downcase == c_first_n && x.last_name.downcase == c_last_n
              puts "Found him, these are his stats:"
              Coach.coach_table("#{c_first_n} #{c_last_n}")
              puts "Is there any other coach you would like me to look for?"
              action = gets.chomp
              no_new_coach?(action)
            else
              puts "Sorry, can't find him. Is there any other coach you would like me to look for?"
              action = gets.chomp
              no_new_coach?(action)
            end
          end
        end

        def self.first_name_coach(action)
          split_name = action.downcase.split
          c_first_n = "#{split_name[0]}"
          c_last_n = "#{split_name[1]}"
            Coach.all.each do |x|
              if x.first_name.downcase == c_first_n && x.last_name.downcase == c_last_n
                puts "Found him, these are his stats:"
                Coach.coach_table("#{c_first_n} #{c_last_n}")
                puts "Is there any other coach you would like me to look for?"
                action = gets.chomp
                no_new_coach?(action)
              else
                puts "Sorry, can't find him. Is there any other coach you would like me to look for?"
                action = gets.chomp
                no_new_coach?(action)
              end
            end
          end

          def self.team_coach_locate(action)
            split_name = action.downcase.split
            c_first_n = "#{split_name[0]}"
            c_last_n = "#{split_name[1]}"
              Coach.all.each do |x|
                if x.first_name.downcase == c_first_n && x.last_name.downcase == c_last_n
                  puts "Found him, these are his stats:"
                  Coach.coach_table("#{c_first_n} #{c_last_n}")
                  puts "Is there any other coach you would like me to look for?"
                  action = gets.chomp
                  no_new_coach?(action)
                else
                  puts "Sorry, can't find him. Is there any other coach you would like me to look for?"
                  action = gets.chomp
                  no_new_coach?(action)
                end
              end
            end

              def self.no_new_coach?(action)
                if action == "no"
                  puts "Well that's ok, would you like to go back to the main menu?"
                  action = gets.chomp
                  main_menu_return(action)
                elsif action == "yes"
                  puts "Let's do it! Do you know the coach's full name?"
                  action = gets.chomp
                  coach_full_name?(action)
                end
              end

#======================================================================#
    def self.player_full_name?(action)
      if choose_which.downcase == "yes"
        puts "Cool, what's his full name?"
      elsif action == "no"
        puts "That's alright, what's his last name?"
        action = gets.chomp
        player_last_name?(action)
      end
    end

    def self.player_last_name?(action)
      if action == "yes"
        puts "Sweet, what's his last name?"
        action = gets.chomp
        last_name_player(action)
      elsif action == "no"
        puts "That's fine, do you know his first name?"
        action = gets.chomp
        player_first_name?(action)
      end
    end

    def self.player_first_name?(action)
      if action == "yes"
        puts "Nice, what's his first name?"
        action = gets.chomp
        first_name_player(action)
      elsif action == "no"
        puts "Oh boy. Well, do you know his team?"
        action = gets.chomp
        team_player(action)
      end
    end

    def self.player_coach(action)
      if action == "yes"
        puts "Finally, what's his team?"
        action = gets.chomp
        first_name_coach(action)
      elsif action == "no"
        puts "Come back when you do. Do you want to go back to the main menu?"
        action = gets.chomp
        main_menu_return(action)
      end
    end

    def self.full_name_player(action)
      split_name = action.downcase.split
      c_first_n = "#{split_name[0]}"
      c_last_n = "#{split_name[1]}"
        Coach.all.each do |x|
          if x.first_name.downcase == c_first_n && x.last_name.downcase == c_last_n
            puts "Found him, these are his stats:"
            Coach.coach_table("#{c_first_n} #{c_last_n}")
            puts "Is there any other coach you would like me to look for?"
            action = gets.chomp
            no_new_coach?(action)
          else
            puts "Sorry, can't find him. Is there any other coach you would like me to look for?"
            action = gets.chomp
            no_new_coach?(action)
          end
        end
      end

      def self.last_name_player(action)
        split_name = action.downcase.split
        c_first_n = "#{split_name[0]}"
        c_last_n = "#{split_name[1]}"
          Coach.all.each do |x|
            if x.first_name.downcase == c_first_n && x.last_name.downcase == c_last_n
              puts "Found him, these are his stats:"
              Coach.coach_table("#{c_first_n} #{c_last_n}")
              puts "Is there any other coach you would like me to look for?"
              action = gets.chomp
              no_new_coach?(action)
            else
              puts "Sorry, can't find him. Is there any other coach you would like me to look for?"
              action = gets.chomp
              no_new_coach?(action)
            end
          end
        end

        def self.first_name_player(action)
          split_name = action.downcase.split
          c_first_n = "#{split_name[0]}"
          c_last_n = "#{split_name[1]}"
            Coach.all.each do |x|
              if x.first_name.downcase == c_first_n && x.last_name.downcase == c_last_n
                puts "Found him, these are his stats:"
                Coach.coach_table("#{c_first_n} #{c_last_n}")
                puts "Is there any other coach you would like me to look for?"
                action = gets.chomp
                no_new_coach?(action)
              else
                puts "Sorry, can't find him. Is there any other coach you would like me to look for?"
                action = gets.chomp
                no_new_coach?(action)
              end
            end
          end

          def self.team_player_locate(action)
            split_name = action.downcase.split
            c_first_n = "#{split_name[0]}"
            c_last_n = "#{split_name[1]}"
              Coach.all.each do |x|
                if x.first_name.downcase == c_first_n && x.last_name.downcase == c_last_n
                  puts "Found him, these are his stats:"
                  Coach.coach_table("#{c_first_n} #{c_last_n}")
                  puts "Is there any other coach you would like me to look for?"
                  action = gets.chomp
                  no_new_coach?(action)
                else
                  puts "Sorry, can't find him. Is there any other coach you would like me to look for?"
                  action = gets.chomp
                  no_new_coach?(action)
                end
              end
            end

              def self.no_new_player?(action)
                if action == "no"
                  puts "Well that's ok, would you like to go back to the main menu?"
                  action = gets.chomp
                  main_menu_return(action)
                elsif action == "yes"
                  puts "Let's do it! Do you know the coach's full name?"
                  action = gets.chomp
                  coach_full_name?(action)
                end
              end

#=========================================================================#

    def self.team_name?(action)
      if action == "yes"
        puts "Cool, what's the team name?"
        action = gets.chomp
        team_name(action)
      elsif action == "no"
        puts "Well, ok. Do you know the team's division?"
        action = gets.chomp
        no_team_reference(action)
      end
    end

    def self.team_name(action)
      split_name = action.downcase.split
      c_first_n = "#{split_name[0]}"
      c_last_n = "#{split_name[1]}"
        Coach.all.each do |x|
          if x.first_name.downcase == c_first_n && x.last_name.downcase == c_last_n
            puts "Found him, these are his stats:"
            Coach.coach_table("#{c_first_n} #{c_last_n}")
            puts "Is there any other coach you would like me to look for?"
            action = gets.chomp
            no_new_coach?(action)
          else
            puts "Sorry, can't find him. Is there any other coach you would like me to look for?"
            action = gets.chomp
            no_new_coach?(action)
          end
        end
      end


    def self.no_team_reference(action)
      if action == "yes"
        puts "Alright, what division is the team in?"
        action = gets.chomp
        team_division(action)
      elsif action == "no"
        puts "Hmm...would you like to go back to the main menu?"
        action = gets.chomp
        main_menu_return(action)
      end
    end

    def self.team_division(action)
      split_name = action.downcase.split
      c_first_n = "#{split_name[0]}"
      c_last_n = "#{split_name[1]}"
        Coach.all.each do |x|
          if x.first_name.downcase == c_first_n && x.last_name.downcase == c_last_n
            puts "Found him, these are his stats:"
            Coach.coach_table("#{c_first_n} #{c_last_n}")
            puts "Is there any other coach you would like me to look for?"
            action = gets.chomp
            no_new_coach?(action)
          else
            puts "Sorry, can't find him. Is there any other coach you would like me to look for?"
            action = gets.chomp
            no_new_coach?(action)
          end
        end
      end

      def self.no_new_team?(action)
        if action == "no"
          puts "Well that's ok, would you like to go back to the main menu?"
          action = gets.chomp
          main_menu_return(action)
        elsif action == "yes"
          puts "Let's do it! Do you know the coach's full name?"
          action = gets.chomp
          coach_full_name?(action)
        end
      end
#========================================================================#

def self.lets_battle_home(action)
    split_name = action.downcase.split
    home = "#{split_name[0]}"
    away = "#{split_name[1]}"
    puts "LET'S BATTLE!!!"


    battle = Team.battle(Team.all[0], Team.all[1])
    puts battle
  end

# def self.lets_battle_home(action)
#   away_team = action
#   puts "Hmm...very interesting."
#   puts
#   last = gets.chomp
#   first = action
#   battle_mode(action)
# end
#
# def self.battle_mode(action)
#

  def self.no_new_battle?(action)
    if action == "no"
      puts "Well that's ok, would you like to go back to the main menu?"
      action = gets.chomp
              main_menu_return(action)
            elsif action == "yes"
              puts "Let's do it! What's the home team?"
              action = gets.chomp
              lets_battle_home?(action)
            end
          end


#========================================================================#

      def self.main_menu_return(action)
          if action == "yes"
            puts "Would you like you access [stats], or make two teams [battle] it out?"
            action = gets.chomp
            choose_first(action)
          elsif action == "no"
           puts "Oh, that's too bad. Goodbye!"
           exit(0)
        end
      end


end

NflStatChecker.run_program
