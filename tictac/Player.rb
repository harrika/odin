class Player
	def initialize()
		baptise
	end

	def baptise
		puts "give this Player a name: "
		@name = (gets)
	end

	def name
		@name
	end
end