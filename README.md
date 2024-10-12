# **Stock Picker**  
Stock Picker - The Odin Project (TOP) Exercise

This solution efficiently determines the **best days to buy and sell stock** to maximize profit. We use a **single pass iteration** to track the **minimum buy day** and calculate potential profit for each day. If a new **maximum profit** is found, we update the **buy and sell days**.

---

## **Steps of the Solution**

1. **Initialize variables**:
   - `max_profit`: Holds the greatest profit found so far (default is 0).
   - `min_day`: Holds the index (day) with the **lowest price seen so far** (default is 0).
   - `buy_sell_days`: Stores the **best days to buy and sell** as an array `[buy_day, sell_day]`.

2. **Iterate over the array's elements and indices**:
   - For **each price and its corresponding day**, check if the price is lower than the current `min_day`'s price. If so, update `min_day`.

3. **Calculate potential profit**:
   - Use `price - prices[min_day]` to get the **potential profit** if sold on the current day.

4. **Update max profit**:
   - If the potential profit is greater than the `max_profit`, update both:
     - `max_profit` with the new value.
     - `buy_sell_days` with the current `min_day` and `day`.

5. **Return the result**:
   - After the iteration, return the `buy_sell_days` array containing the **best buy and sell days**.

---

## **Code Implementation**
```ruby
def stock_picker(prices)
  min_day = 0
  max_profit = 0
  buy_sell_days = [0, 0]

  prices.each_with_index do |price, day|
    if price < prices[min_day]
      min_day = day
    end

    potential_profit = price - prices[min_day]

    if potential_profit > max_profit
      max_profit = potential_profit
      buy_sell_days = [min_day, day]
    end
  end

  buy_sell_days
end
