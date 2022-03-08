def RunningSum(arr)
  tempArr = []
  z = 0
  sum =0
  while z < arr.length
    if z>0
    sum =0
    l = z
    while l>=0
      sum += arr[l]
      l -=1
    end
  end
  tempArr.push(sum)
  z +=1
  end

  tempArr[0] = arr[0]
  print tempArr
end

arr = [1 , 2 , 3 , 4 , 5]
print arr
print "\n"
RunningSum(arr)
