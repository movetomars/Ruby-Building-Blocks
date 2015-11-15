def stockpicker(stock_prices)
    
    profit = 0
    buy = 0
    sell = 0
    
    stock_prices.each do |bnum|
        
        stock_prices[stock_prices.index(bnum)..-1].each do |snum|
            
            if snum.to_i - bnum.to_i > profit
                profit = snum.to_i - bnum.to_i
                buy = stock_prices.index(bnum) + 1
                sell = stock_prices.index(snum) + 1
                
            end
        end
    end
    
    if buy ==  sell
        return "Better stay far away from this one."
    end
        return "The best day to buy is Day " + buy.to_s + ". The best day to sell is Day " + sell.to_s + "."
   
end

puts "Enter any number of stock prices, one for each day, separated by commas."

stock_prices = gets.chomp.gsub(/\s+/, "").split(",")

puts stockpicker(stock_prices)