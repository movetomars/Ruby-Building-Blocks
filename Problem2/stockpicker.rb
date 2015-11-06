def stockpicker(stock_prices)

    print stock_prices

end

puts "Enter any number of stock prices, one for each day, separated by commas."

stock_prices = gets.chomp.gsub(/\s+/, "").split(",")

puts stockpicker(stock_prices)