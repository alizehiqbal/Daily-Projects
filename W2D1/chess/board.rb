require_relative 'pieces/piece'
require_relative 'pieces/nullpiece'

class Board
  attr_reader :rows

  def initialize
    @rows = Board.populate_board


  end

  def self.populate_board
    board_row = Array.new(8) { Array.new(8) }
    board_row[0].map! {|place| Piece.new }
    board_row[1].map! {|place| Piece.new }
    board_row[2].map! {|place| NullPiece.new }
    board_row[3].map! {|place| NullPiece.new }
    board_row[4].map! {|place| NullPiece.new }
    board_row[5].map! {|place| NullPiece.new }
    board_row[6].map! {|place| Piece.new }
    board_row[7].map! {|place| Piece.new }
    board_row
  end



  def [](pos)
    row, col = pos
    @rows[row][col]
  end
  def []=(pos, val)
    row, col = pos
    @rows[row][col] = val
  end

  def move_piece(start_pos, end_pos) # add color
    unless @rows[start_pos].nil?
      @rows[start_pos] = @rows[end_pos]
    else
      raise StandardError
    end

  end

  def valid_pos?(pos)
    x, y = pos
    return true if x.between?(0, 7) and y.between?(0, 7) 
  end

  def add_piece(piece, pos)

  end

  def checkmate?(color)
  end

  def in_check?(color)
  end

  def find_king(color)
  end

  def pieces
  end

  def dup
  end

  def mov_piece!(color, start_pos, end_pos)
  end


  private
  attr_reader :sentinel

end
