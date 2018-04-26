# mastermind
# game.rb
# ------------------------------------------------------------------

require_relative "Board.rb"

board = Board.new
cc = 0
games = 10

while cc < games
	board.loadbd	
	puts "calculating hint .........."		
	board.hintcalc		
	board.display
	board.incount
	board.choices(0)	
	board.choices(1)	
	board.choices(2)	
	board.choices(3)
	board.choices(4)	
	board.choices(5)	
	board.choices(6)	
	board.choices(7)
	board.choices(8)	
	board.choices(9)	
	board.choices(10)	
	
	if board.winchk	
		puts ""
		puts " **** %%%% ***** YOU ARE A WINNER **** %%%% *****"
		puts ""
		puts "#{board.code} ------ is the winning code!"	 	
		break
	else
		board.bdclear
		board.hntclear		
		cc += 1
		if cc != games
			puts " you now have #{games-cc} chances left"
		end
	end	
end

if !board.winchk
	puts 'GAME OVER'
end

