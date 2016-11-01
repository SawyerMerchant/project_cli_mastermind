class Codebreaker
  #initialize
  def initialize
    input = []

    get_input(input)
  end

  # get input
  def get_input(input)
    input = ask_for_input

    is_valid?(input)
  end

  # prompt for input
  def ask_for_input
    Render.prompt
    gets.strip.split(" ")
  end

  # confirming input format
  def is_valid?(input)
    if input.all? { |color| Secret::COLORS.include?(color) } && input.length == 4
      true
    else
      Render.invalid
      get_input(input)
    end
  end
end
