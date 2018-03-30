# bubble_sort that takes an array and returns a sorted array.
# It uses the bubble sort algorithm
# Henry Kirya

def bubble_sort(ray)
	n = ray.length-1		
	loop do 
		swpd = false		
		rr = 0.step(n-1).to_a
		for c in rr do
	 	  if (ray[c] > ray[c+1]) 
	 	  	tt = ray[c]
	 	  	ray[c] = ray[c+1]
	 	  	ray[c+1] = tt
	 	  	swpd = true	 	  	
	 	  end #end if 	 
	 	end #end for 
	break if swpd == false
	end #end loop
	ray
end #end def

ll = [4,3,78,2,0,2]
p bubble_sort(ll)


#bubble_sort_by uses yield to sort an array by accepting a block

def bubble_sort_by(ray)
	n = ray.length-1		
	loop do 
		swpd = false		
		rr = 0.step(n-1).to_a
		for c in rr do
		  if yield(ray[c], ray[c+1]) > 0
		  	ray[c], ray[c+1] = ray[c+1], ray[c]     	        	
	 	  # if (ray[c] > ray[c+1]) 
	 	  # 	tt = ray[c]
	 	  # 	ray[c] = ray[c+1]
	 	  # 	ray[c+1] = tt
	 	  	swpd = true	 	  	
	 	  end #end if 	 
	 	end #end for 
	break if swpd == false
	end #end loop
	p ray
	ray
end #end def


bubble_sort_by(["hi","hello","hey"]) do |left,right|
 	left.length - right.length 	
 end
