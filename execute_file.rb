require_relative './config/environment.rb'
require 'pry'
require 'terminal-table'
class NflStatChecker
  def self.welcome
    puts 'Welcome to the NFL stats checker and game prediction app!'
    puts 'Please enter your home or favorite team.'
    gets.chomp
  end


  def self.run_program
    home_team = welcome
    puts "Would you like you access player stats, coach stats, team stats, or see win conditions of you team the #{home_team} against any other team?"
    action = gets.chomp
  end

  def self.choose_first
      r_p = run_program
      if r_p == "stats"
        puts "Do you want to know the stat of a player, a team, or a coach?"
      elsif r_p == "battle"
        puts "Let's Battle it out! Who is the home team?"
      end
      gets.chomp
    end

    def self.choose_stats
      if choose_first == "coach"
        puts "Alright, do you know the coach's full name?"
      end
      gets.chomp
    end

    def self.coach_full_name
      if choose_stats.downcase == "yes"
        puts "Cool, what's his full name?"
      end
      gets.chomp
    end

    def self.coach_name
      split_name = coach_full_name.downcase.split
      c_first_n = "#{split_name[0]}"
      c_last_n = "#{split_name[1]}"
        Coach.all.each do |x|
          if x.first_name.downcase == c_first_n && x.last_name.downcase == c_last_n
            puts "Found him, these are his stats:"
            Coach.coach_table("#{c_first_n} #{c_last_n}")
            break
          else
            puts "Sorry, can't find him"
          end
        end
      end

end

NflStatChecker.coach_name
