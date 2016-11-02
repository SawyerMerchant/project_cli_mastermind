class Mastermind
  #initialize
  def initialize
    # win_condition = false
    # @current_turn = 1
    # total_turns = 12

    Render.instructions

    @secret = Secret.new
    @secret.create_secret

    @codebreaker = Codebreaker.new


  end

  # play
  def play()
    # turn counter that increments
    # unless win_condition
      # execute play
      # call render class
  # check_win
    # codebreaker input == secret
  # check_loss
    # number_of_turns == 12

  end
end