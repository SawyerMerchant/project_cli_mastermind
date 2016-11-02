class Board

  # nested array of previous turns
  def initialize
    # create initial []

  end

  def self.generate(code)
    @board = []
    @board << code
    Render.board(@board)
  end

end