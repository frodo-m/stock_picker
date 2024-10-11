stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stocks)
  max_profit = 0
  best_days = []

  stocks.each_with_index do |buy_price, buy_index|
    stocks.each_with_index do |sell_price, sell_index|
      profit = sell_price - buy_price

      if profit > max_profit && buy_index < sell_index
        max_profit = profit
        best_days = [buy_index, sell_index]
      end
    end
  end

  puts best_days
end
stock_picker(stock_prices)
