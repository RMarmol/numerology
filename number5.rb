class Nclient
	attr_accessor :astring, :dobstring

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

		val = 0

		while dstring.length > 1
			dstring.each_char { |c| val = val + c.to_i }
			dstring = val.to_s
			val = 0
		end
		return (dstring)
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

p1 = Nclient.new('RAUL', '19530401')

puts p1.astring

puts ""

puts p1.name_to_digs(p1.astring)

puts ""

puts p1.reducen(p1.dobstring)
# puts 
# puts p1.let_to_dig("R")

puts ""

# puts Nclient.new.name_to_digs("Raul")

puts ""

# let_to_dig("R")

# my_name = 'Nclient.new

# my_name = 'RAUL'

# puts my_name.name_to_digs
# puts 'Raul'.name_to_digs

# 'a'.let_to_dig

# puts my_name.reducen


# dstring = '19530401'

# val = 0

=begin
while dstring.length > 1
	dstring.each_char { |c| val = val + c.to_i }
	puts val
	dstring = val.to_s
	val = 0
end
=end
