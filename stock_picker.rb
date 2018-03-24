#stock picker ruby project
# Henry M Kirya - Uganda

def stock_picker(ray)
	days = []
	proft = 0
	for k in 0...ray.length-1	
		left = ray[k]
		for i in k+1...ray.length	
			right = ray[i]
			if right-left > proft
				proft = right-left
				rr = right
				rri = i
				ll = left
				lli = k
			end
		end
	end	
	days.append(lli)
	days.append(rri)
	return days
end

p stock_picker([17,3,6,9,15,8,6,1,10])

