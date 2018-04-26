
require_relative "Player.rb"
require_relative "Board.rb"

def switch
	@current == @player1.name ? @current = @player2.name : @current = @player1.name
end

@player1 = Player.new
@player2 = Player.new
@current = @player2.name

board = Board.new

while true
	puts "make your move #{@current}: "
	cell = gets.chomp.to_sym
	board.select(cell)
	board.display
	board.winchek
	board.drawchek
	if board.win
		puts "#{@current} is the WINNER!"
		puts "run >ruby games.rb to plau again"
		break
	elsif board.draw
		puts "DRAW  DRAW  DRAW DRAW DRAW"
		puts "run >ruby games.rb to play again"
		break
	end
	switch
end
	