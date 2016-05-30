def bubbleSort(array)
  # set `swapped` to true as default
  swapped = true
  # while no element was sorted ( a swap has happened, i.e. swapped = true )
  while swapped
    # reset swapped (i.e. set swapped = false)
    # for i = 0, until n - 1 where n = array.length
    for i in 0...(array.length-1)
      # a = array[i] and b = array[i + 1]
      a = array[i]  
      b = array[i+1]
      # if a is bigger than b
      if a > b
        # swap needed, swap a and b values
        array[i+1] = a
        array[i] = b
        # set swapped to true, so we can go through while loop again
        swapped = true
      else
        swapped = false
      end
    end
  end
  puts "#{array}"
end

bubbleSort([2, 42, 35, 3])