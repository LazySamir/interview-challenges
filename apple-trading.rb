stock_prices = [9, 5, 20, 41, 23, 52, 8]

def get_max_profit(stock_prices)
  highest_profit = 0
  stock_prices.each {|x|
    current_price = x
    stock_prices.each {|y|
      highest_profit = current_price - y if current_price - y > highest_profit
    }
  }
  highest_profit
end
