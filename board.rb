

class Board

  attr_reader :rows

  def self.rows
    Array.new(8) {Array.new(8)}
  end

  def initialize
    @rows = Board.rows
    @sentinel = NullPiece.new
  end

  def [](pos)
    row, col = pos[0], pos[1]
    @rows[row][col]
  end

  def []=(pos, value)
    row, col = pos[0], pos[1]
    @rows[row][col]
  end

  def add_piece(piece, pos)
    raise 'The position is not empty' if !self[pos].empty?
    self[pos] = piece
  end

  def populate
    back_pieces = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]

    @rows[0]
  end

  def move_piece(color, start_pos, end_pos)
    raise 'There is no piece' if @rows[start_pos].empty?
    raise 'Position not available' if !valid_move?(end_pos)
    @rows[start_pos], @rows[end_pos] = @rows[end_pos], @rows[start_pos]
  end

  def valid_pos?(pos)
    pos.all? { |el| el.between?(0, 7)}
  end

  #I need checkmate, in_check, find_king, pieces, dup, move_piece!, populate

end
