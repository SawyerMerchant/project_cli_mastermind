class Secret
  COLORS = %W[r g b y p o]

  #initialize
  def initialize
    #secret
  end

  # user input for secret
  def create_secret
    @code = []
    4.times { |item| @code[item] = COLORS.sample }
    p @code
  end

  # "close" and "exact" peg logic
  def check_guess(guess)
    check_close(guess)
    #check_exact(guess)
  end

  def check_close(guess)
    close_counter = 0
    guess.each do |color|
      close_counter += 1 if @code.include?(color)
    end
  end

  def check_exact(guess)

  end
end