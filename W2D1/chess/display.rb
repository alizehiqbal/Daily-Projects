require 'colorize'
require_relative 'cursor'
class Display
  attr_reader :board, :cursor

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    # cursor.get_input
    r, c = cursor.cursor_pos
    puts "________________"
    board.rows.each_index do |row|
      print "|"
      board.rows.each_index do |col|
        if row == r and  col == c
          print "__|".magenta
        else
          print "__|"
        end
      end
    puts 
  end
end
end
