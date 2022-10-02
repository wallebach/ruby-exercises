prices = [17,3,6,9,15,8,5,1,10] 

best_price = 0
best_time = [0,0]

prices.each_with_index do | max_price, max_price_index |
    for min_price_index in (0 .. max_price_index) do 
        price = prices[min_price_index]
        if max_price - price > best_price
            best_price = max_price - price
            best_time = [min_price_index, max_price_index]
        end
    end
end

p best_time