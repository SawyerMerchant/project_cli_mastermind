class Render
  #initialize
  def initialize

  end

  def self.instructions
    puts "Welcome to Mastermind!"
    puts "You have 12 turns to guess the 4 color code."
    puts "There are 6 possible colors: Red, Green, Blue, Yellow, Purple, Orange."
    puts "Enter your guesses in the format 'r g b y.'"
  end

  def self.board(guesses)
    # what it looks like
    # > r g b y
    output = ""
    guesses.each_with_index do |guess, index|
      output += "Turn #{index +1} "
      guess.each do |color|
        output += color
      end
      Secret.new.check_guess(guess)
    end
    puts output


    # turn 1: r g b y  || exact: 1, close: 2
    # > y g b r
    # turn 1: r g b y  || exact: 1, close: 2
    # turn 2: y g b r  ||
  end

  def self.prompt
    puts "Please enter guess # #{@current_turn} (ex: 'r g b y'):"
  end

  def self.invalid
    puts "Invalid input, please use the format 'r g b y.'"
  end

  # displays close and exact pegs

end

