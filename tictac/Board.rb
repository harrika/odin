class Board 
	
	@@bdrows = [@@row1 = {:a1 => ' ', :b1 => ' ', :c1 => ' '},
		 	 	@@row2 = {:a2 => ' ', :b2 => ' ', :c2 => ' '},
		  		@@row3 = {:a3 => ' ', :b3 => ' ', :c3 => ' '}]

	@win = false
	@draw = false
	@@turn = 0

	def initialize
		display
		puts "All players initailised thank you"
	end

	def win
		@win
	end

	def draw
		@draw
	end

	def display	
		puts "TIC TAC TOE Game"
		puts " "
		puts " "
		system "cls" or system 'clear'
	    puts "  Rows are:  a  b and c"
	    puts "  Columns are:  1  2  and 3"
	    puts "  Enter cell positon as per this example c2"
		puts " "
		puts "        a       b       c"
		puts " "
		puts " 1      #{@@row1[:a1]}    |  #{@@row1[:b1]}    |   #{@@row1[:c1]} "
		puts "       -------------------"
		puts " 2      #{@@row2[:a2]}    |  #{@@row2[:b2]}    |   #{@@row2[:c2]} "
		puts "       -------------------"
		puts " 3      #{@@row3[:a3]}    |  #{@@row3[:b3]}    |   #{@@row3[:c3]} "
		puts ""
		puts ""
		
	end
	

	def select(cell)
		 @@bdrows.each do |row| 
		 	row.each do|k, v| 
		 		if k == cell && v == ' '
		 			@@turn.odd? ? row[k] = "X" : row[k] = "O"
		 			@@turn += 1
		 		end
		 	end
		 end
	end

	def winchek
		xwins = ["X","X","X"]
		owins = ["O","O","O"]

		winners = [			
			[@@row1[:a1],@@row2[:a2],@@row3[:a3]],
			[@@row1[:b1],@@row2[:b2],@@row3[:b3]],
			[@@row1[:c1],@@row2[:c2],@@row3[:c3]],
			[@@row1[:a1],@@row1[:b1],@@row1[:c1]],
			[@@row2[:a2],@@row2[:b2],@@row2[:c2]],
			[@@row3[:a3],@@row3[:b3],@@row3[:c3]],
			[@@row1[:a1],@@row2[:b2],@@row3[:c3]],
			[@@row3[:a3],@@row2[:b2],@@row1[:c1]]]

		winners.each do |combn| 
			if combn == xwins 
				@win = true
			elsif combn == owins
				@win = true
			end
		end
	end

	def drawchek
		if @@turn >= 9 
			@draw = true
		end
	end
end