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
end

NflStatChecker.run_program
