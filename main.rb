def stock_picker(prices)
  profit = 0
  buy_sell_days = []
  prices.each_with_index do |price, buy_day|
    (buy_day + 1).upto(prices.length - 1).each do |sell_day|
      if prices[sell_day] - prices[buy_day] > profit
        profit = prices[sell_day] - prices[buy_day]
        buy_sell_days = [buy_day, sell_day]
      end
    end
  end
  return buy_sell_days
end
