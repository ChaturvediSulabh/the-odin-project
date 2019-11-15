class StockPicker

  def initialize
    @buy_on = 0
    @sell_on=0
  end

  def stockPicker(listOfPricesPerDay)
    buy_ar = listOfPricesPerDay.sort
    profit = 0
    buy_ar.each do |bp|
      listOfPricesPerDay.each do |sp|
        diff = listOfPricesPerDay.index(sp) - listOfPricesPerDay.index(bp)
        next if diff <=  0

        if profit < sp - bp
          profit =  sp - bp
          @buy_on = listOfPricesPerDay.index(bp)
          @sell_on = listOfPricesPerDay.index(sp)
        else
          next
        end
      end
    end
    arr = []
    arr.push(@buy_on)
    arr.push(@sell_on)
    print arr
  end
end

ob = StockPicker.new()
ob.stockPicker([17,3,6,9,15,8,6,1,10])