# max_profit.rb
def get_max_profit(prices)
  get_max(prices) - get_min(prices)
end

def get_min(prices)
  min = prices[0]
  prices.each do |price|
    min = price if min > price
  end
  min
end

def get_max(prices)
  max = prices[0]
  prices.each do |price|
    max = price if max < price
  end
  max
end

stock_prices_yesterday = [10, 7, 5, 8, 11, 9]

p stock_prices_yesterday

p get_max_profit(stock_prices_yesterday)