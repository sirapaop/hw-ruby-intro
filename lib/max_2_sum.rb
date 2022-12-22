arr = [1,2,3,4,5,6,15,24,10,12,33,8]
def max_2_sum(arr)
    arr.sort! {|first, second| second <=> first}
    print arr
    sum = arr[0] + arr[1]
    print "\nthe sum of its two largest elements is #{sum}"

end

max_2_sum(arr)      






