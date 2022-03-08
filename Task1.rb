class Number
  @numArray
  def initialize(arr)
    @numArray = arr
  end

  def numberFrequency
    print ("#{@numArray} \n" )
    freqs1 = {}
    freqs1.default = 0
    @numArray.each { |c| freqs1[c] += 1 }
    puts freqs1
  end
end


arr = [1, 2, 3, 4, 1, 1, 1, 2, 3, 11, 11, 2, 33]
num1 = Number.new(arr)
num1.numberFrequency
