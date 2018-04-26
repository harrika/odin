# mastermind
# Board Class
# ------------------------------------------------------------------

class Board 	
	@@colors = ['Y','O','R','G','W','B']
	@@bd = []
	@@hnt = []	
	@@scratch = [[],[],[],[],[],[],[],[],[],[],[]]
	@@message = ""	
	@@count = 0
	@@code = @@colors.sample(4)

	def gencode (ray, n)
		result = []
		n.times do 
		    result << ray[rand(ray.length)]
		end
		return result
	end

	def initialize
		@@message = ""
		display
		puts "Mastermind initailized"
	end

	def bdclear
		@@bd = []
	end

	def hntclear
		@@hnt = []
	end

	def incount
		@@count += 1
	end
	
	def display					
		system "cls" or system 'clear'
		puts ""
		puts "MASTERMIND colour codes: "
		puts ""
	    puts "  Y: yellow"
	    puts "  O: Orange"
	    puts "  R: Red"
	    puts "  G: Green"
	    puts "  W: White"
	    puts "  B: Blue"
	    puts ""	    	   
		puts "  #{@@bd[0]}  | #{@@bd[1]}  | #{@@bd[2]}  | #{@@bd[3]}  | -------->  #{@@hnt[0]} #{@@hnt[1]} "
		puts "                                 #{@@hnt[2]} #{@@hnt[3]}"
		
	end

	def choices(x)
		if @@scratch[x] != []
			p @@scratch[x]
		end
	end
	
	def bdlen()
		@@bd.length
	end

	def update(c)
		if @@colors.include? c
			@@bd.push(c)
			@@scratch[@@count].push(c)
		else
			@@message = "Choose colors from among those listed above !"
		end			
	end

	def loadbd()
		while bdlen < 4	
			puts "Enter your guess by selecting 4 colors: "			
			color = gets.chomp.upcase
			update(color)				
			display			
		end
	end

	def chcode(i)
		@@code2[i] = "z"
	end

	def codecopy()
		@@code.map do |e| e end
	end

	def code
		@@code
	end


	def hintcalc()		
		@@code2 = codecopy
		@@bd.each_with_index { |v,i|
	 	if v == @@code2[i]	 		
	 		chcode(i)
	 		@@hnt.push('x')
	 	end
	 	}		 	
	 	@@bd.each_with_index { |v,i|	 	
	 	if @@code2.include? v
	 		z = @@code2.find_index(v)
	 		chcode(z)
	 		@@hnt.push('o')	 		
	 	end
	 	}	
	 end

	 def winchk()
	 	@@bd == @@code
	 end	

end
