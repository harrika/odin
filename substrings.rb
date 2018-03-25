#substrings.rb
#returns a hash listing each substring that was found in the original string 
#and how many times it was found
#Henry M Kirya

def substrings (word, dict)
	bigarray = []	
	wordray = word.downcase.split 	
 	
 	for i in wordray 		
		nn = dict.select { |w| i.include?(w) }			
		bigarray = bigarray+nn	
	end		
		
	bigash =  Hash.new(0).tap { |h| bigarray.each { |word| h[word] += 1 } }
	return bigash	
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
# p substrings("going below", dictionary)
