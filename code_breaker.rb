require "./secret"
class Codebreaker
  #initialize
  def initialize
  end

  # get input
  def get_input(input, secret)
    input = ask_for_input
    input unless is_valid?(input)
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


p Codebreaker.new.is_valid?(%w(r r r r))