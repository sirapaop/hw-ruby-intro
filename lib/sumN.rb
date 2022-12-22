arr = [1,2,3,4,5]
n = 5
def sum_to_n(arr, n)
    sum_arr = []
  if arr.length == 0
    return false
  elsif arr.length == 1
    return false

  else
    for i in arr do
      for j in arr do
        sum = i + j
        sum_arr[j] = sum
      end  
      print sum_arr
    end
    for k in sum_arr do
      if n == k 
        print "#{n} = #{k}"
        return true
      else
        return false
      end
    end
  end
end

sum_to_n(arr, n)
