stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

# def stock_picker(stocks)
#   max_profit = 0
#   best_days = []

#   stocks.each_with_index do |buy_price, buy_index|
#     stocks.each_with_index do |sell_price, sell_index|
#       profit = sell_price - buy_price

#       if profit > max_profit && buy_index < sell_index
#         max_profit = profit
#         best_days = [buy_index, sell_index]
#       end
#     end
#   end

#   best_days
# end
# puts "Best days are: #{stock_picker(stock_prices)}"

def stock_picker(stocks)
  min_price = Float::INFINITY
  max_profit = 0
  best_days = []
  min_index = 0

  stocks.each_with_index do |price, index|
    # Update min_price & min_index when a new minimum is found
    if price < min_price
      min_price = price
      min_index = index
    end

    # Calculate potential profit
    profit = price - min_price

    # If profit is greater than max_profit, update max_profit and best_days
    if profit > max_profit
      max_profit = profit
      best_days = [min_index, index]
    end
  end

  best_days
end

puts "Best days are: #{stock_picker(stock_prices)}"
