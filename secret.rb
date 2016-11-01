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

  # confirm correct colors
  def check_colors
    COLORS.include?(input) # UNFINISHED
  end

  # "close" and "exact" peg logic
end