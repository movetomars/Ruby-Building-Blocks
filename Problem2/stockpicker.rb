def stockpicker(stock_prices)
    
    stock_prices.sort.reverse
    
    print "Best day to sell: " + stock_prices[0] + " " + "Best day to buy: " + stock_prices[-1]

end

puts "Enter any number of stock prices, one for each day, separated by commas."

stock_prices = gets.chomp.gsub(/\s+/, "").split(",")

puts stockpicker(stock_prices)