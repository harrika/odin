# bubble_sort that takes an array and returns a sorted array.
# It uses the bubble sort \lgorithm
# Henry Kirya



def bubble_sort(ray)
	n = ray.length-1		
	loop do 
		swpd = false
		#rr = Array.new(n-1) {|i| i+1 }
		rr = 0.step(n-1).to_a
		for c in rr do
	 	  if (ray[c] > ray[c+1]) 
	 	  	tt = ray[c]
	 	  	ray[c] = ray[c+1]
	 	  	ray[c+1] = tt
	 	  	swpd = true
	 	  	#puts "swapped #{ray}" 	  	
	 	  end #end if 	 
	 	end #end for 
	break if swpd == false
	end #end loop
	ray
end #end def

ll = [4,3,78,2,0,2]
p bubble_sort(ll)




