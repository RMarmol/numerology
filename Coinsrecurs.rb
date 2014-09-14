class Coinchange

def change(coins, amounts, highest, sum, goal)
	# Specify our starting coins and all coin amounts.
	coins = Array[]
	amounts = Array[1, 5, 10, 25, 50]

	# Example: Make change for 51 cents.
	change(coins, amounts, 0, 0, 51)

    # Display result if we have correct change.
    if sum == goal
		display(coins, amounts)
    end

    # Return if we have too much money.
    if sum > goal
		return
    end

    # Loop over coin amounts and try adding them.
    amounts.each do |value|
	if value >= highest
	    # Copy the coins array, add value to it.
	    copy = Array[]
	    copy.concat coins
	    copy.push(value)
	    # Recursive call: add further coins if needed.
	    change(copy, amounts, value, sum + value, goal)
	end #if
	end # do
end	# def


def display(coins, amounts)
    # Display all the coins.
    amounts.each do |amount|
	count = 0
	coins.each do |coin|
	    if coin == amount
			count += 1
	    end
	end
	print amount, ": ", count, "\n"
    end
    print "\n"
end

end # class
