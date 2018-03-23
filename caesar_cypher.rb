def caesar_cipher(s, n)
	s = s.split("")
	ss = s.collect { |e| 
	e.ord>= 'a'.ord ? 97+((e.ord-97+n)%26) : 
	e.ord>= 'A'.ord ? 65+((e.ord-65+n)%26) : e.ord }

	sss = ss.collect { |e| e.chr } 
	p sss.join()	
end

caesar_cipher("What a string!", 5)



