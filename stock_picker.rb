stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(prices)
  min_day = 0
  max_profit = 0
  best_days = [0, 0]

  prices.each_with_index do |price, day|
    # check if the current day offers a lower price to buy
    min_day = day if price < prices[min_day]

    # calculate the profit if sold today
    potential_profit = price - prices[min_day]

    # update max_profit and the best days if we found a hight profit
    if potential_profit > max_profit
      max_profit = potential_profit
      best_days = [min_day, day]
    end
  end

  best_days
end
puts "Best days are: #{stock_picker(stock_prices)}"

# Different approaches
# def stock_picker(stocks)
#   max_profit = 0
#   best_days = []

#   stocks.each_with_index do |buy_price, buy_day|
#     stocks.each_with_index do |sell_price, sell_day|
#       profit = sell_price - buy_price

#       if profit > max_profit && buy_day < sell_day
#         max_profit = profit
#         best_days = [buy_day, sell_day]
#       end
#     end
#   end

#   best_days
# end
# puts "Best days are: #{stock_picker(stock_prices)}"

# Approach 2, trying to avoid using nested loops (O(n2)), but it seems not the most efficient yet
# def stock_picker(stocks)
#   min_price = Float::INFINITY
#   max_profit = 0
#   best_days = []
#   min_index = 0

#   stocks.each_with_index do |price, index|
#     # Update min_price & min_index when a new minimum is found
#     if price < min_price
#       min_price = price
#       min_index = index
#     end

#     # Calculate potential profit
#     profit = price - min_price

#     # If profit is greater than max_profit, update max_profit and best_days
#     if profit > max_profit
#       max_profit = profit
#       best_days = [min_index, index]
#     end
#   end

#   best_days
# end

# puts "Best days are: #{stock_picker(stock_prices)}"
