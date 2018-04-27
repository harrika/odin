# mastermind
# game.rb
# ------------------------------------------------------------------

require_relative "Board.rb"

board = Board.new
cc = 0
games = 10

while cc < games
	board.loadbd		
	board.hintcalc		
	board.display
	board.incount
	(0..games).each { |w| board.choices(w) }	
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
	puts "#{board.code} ------ see the winning code!"
end

