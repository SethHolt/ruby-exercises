stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stocks)
  max = 0
  buy_and_sell = []
  stocks.each_with_index do |price1, idx1|
    ((idx1 + 1)...stocks.length).each do |idx2|
      if stocks[idx2] - price1 > max
        max = stocks[idx2] - price1
        buy_and_sell = [idx1, idx2]
      end
    end
  end
  p buy_and_sell
end

stock_picker(stocks)