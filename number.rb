class Digstring

	def initialize(personname, dob)  
    	# Instance variables  
    	@astring = personname  
    	@dobstring =  dob 
  	end 
	
	def reducen(dstring)	
		# expects a string of digits as input
		# which it then reduces to a single digit
		# by repeating the addition of all the digits
		# until it's reduced to one digit	
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
		# which it converts to a single digit

		@alphab = { 'A' => '1', 'B' => '2', 'C' => '3', 'D' => '4', 'E' => '5', 'F' => '6', 'G' => '7', 'H' => '8', 'I' => '9',  'J' => '1', 'K' => '2', 'L' => '3', 'M' => '4', 'N' => '5', 'O' => '6', 'P' => '7', 'Q' => '8', 'R' => '9', 'S' => '1' , 'T' => '2', 'U' => '3', 'V' => '4', 'W' => '5', 'X' => '6', 'Y' => '7', 'Z' => '8' }
		
		return @alphab[alet.upcase]
	end

	
end

puts Digstring.new.let_to_dig("R")

puts ""

# puts Digstring.new.name_to_digs("Raul")

puts ""

# let_to_dig("R")

# my_name = Digstring.new

# my_name = 'RAUL'

# puts my_name.name_to_digs
# puts 'Raul'.name_to_digs

# 'a'.let_to_dig

# puts my_name.reducen


n_name = '19530401'

val = 0

while n_name.length > 1
	n_name.each_char { |c| val = val + c.to_i }
	puts val
	n_name = val.to_s
	val = 0
end
