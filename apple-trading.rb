stock_prices = [10, 9, 8, 7, 6, 5, 4]

def get_max_profit(stock_prices)
  highest_profit = 0
  stock_prices.each {|x|
    current_price = x
    stock_prices.each {|y|
      if stock_prices.index(x) > stock_prices.index(y)
        highest_profit = current_price - y if current_price - y > highest_profit
      end
    }
  }
  highest_profit
end

get_max_profit(stock_prices)
