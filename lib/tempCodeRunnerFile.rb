def binary_multiple_of_4? s
    # YOUR CODE HERE
    count = 0
    sum = 0
    if s.length == 0
      return false
    else
      s = s.delete(" ")
      
      arr = ['0', '1']
      for i in -1..s.length do
        
        if arr.include? s[i] 
          count = 1
        else
            
            return false
            break
        end
       end
      if count == 1 
        sum = s.to_i(2)
        if sum %4 == 0
            return true
        end
      else 
        return false
      end
    end
end
  
  s = '1010101010100 0101010101010100 100 0'
  binary_multiple_of_4?(s)






  def binary_multiple_of_4? s
  # YOUR CODE HERE
  s = s.delete(" ")
  if s == "" 
    return false

  elsif s.delete('01') == ''
    if s.to_i(2) % 4 == 0
      return true
    else
      return false
    end
  else
    return false
  end
end