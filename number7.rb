class Nclient
	attr_reader :astring, :dobstring, :origname

	def initialize(fullname, dob) 
    	# remove all spaces from name and upcase it
    	@astring = fullname.gsub(/\s+/, "").upcase  
    	@origname = fullname
    	@dobstring =  dob 
  	end 
	
	def reducen(dstring)	
		# expects a string of digits as input
		# which it then reduces to a single digit
		# by recursively adding all the digits
			
		if dstring.length == 1
			return (dstring)
		end

		val = 0
		dstring.each_char { |c| val = val + c.to_i }
		dstring = val.to_s

		reducen(dstring)
		
	end

	def name_to_digs(aname)
		# expects a string of letters which
		# get converted to a string of digits

		@digs = ''
		aname.each_char { |c| @digs = @digs + let_to_dig(c) }
		return (@digs)
	end

	def let_to_dig(alet)
		# expects a single letter as input
		# returns a single digit corresponding to that letter

		@alphab = { 
					'A' => '1', 
					'B' => '2', 
					'C' => '3', 
					'D' => '4', 
					'E' => '5', 
					'F' => '6', 
					'G' => '7', 
					'H' => '8', 
					'I' => '9',  
					'J' => '1', 
					'K' => '2', 
					'L' => '3', 
					'M' => '4', 
					'N' => '5', 
					'O' => '6', 
					'P' => '7', 
					'Q' => '8', 
					'R' => '9', 
					'S' => '1', 
					'T' => '2', 
					'U' => '3', 
					'V' => '4', 
					'W' => '5', 
					'X' => '6', 
					'Y' => '7', 
					'Z' => '8' 
				}
		
		return @alphab[alet]
	end
end

p1 = Nclient.new('Raul Marmol', '19530401')

puts p1.origname

puts ""

puts p1.astring

puts ""

puts p1.name_to_digs(p1.astring)

puts ""

puts p1.reducen(p1.dobstring)