class Piece

  attr_reader :color, :board

  attr_writer :pos

  def initialize (color, board, pos)
    @color = color
    @board = board
    @pos = []
  end

  def to_s
    "#{symbol}"
  end

  def empty?
    self.is_a?(NullPiece)
  end

  def valid_moves

  end

  def symbol
    :S
  end

private
  def move_into_check?(end_pos)
  end


end
