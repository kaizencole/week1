require 'pry-byebug'

@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

#Task 1

@states[:WA] = "Washington"
@states[:TX] = "Texas"

#Task 2

@cities = {
  OR: ['Portland', 'Salem'],
  FL: ['Miami', 'Tampa', 'Orlando'],
  CA: ['San Francisco', 'Los Angeles', 'San Diego,' 'Oakland'],
  NY: ['Buffalo', 'Albany', 'Syracuse'],
  MI: ['Detroit', 'Ann Arbor'],
  WA: ['Seattle', 'Spokane'],
  TX: ['Dallas', 'Austin', 'Houston']  
}

# Task 3

def describe_state(state_abbrev)
  state_name = @states[state_abbrev.to_sym] 
  cities = @cities[state_abbrev.to_sym]
  return "#{state_abbrev} stands for #{state_name}. 
  Cities in that state include: #{cities.join(', ')}"
end

puts "---- Task 3: Test ----"
puts describe_state('CA')


# Task 4

@taxes = {
  OR: '30',
  FL: '15',
  CA: '25',
  NY: '23',
  MI: '2',
  WA: '18',
  TX: '16'
}

# # Task 5

def calculate_tax(state_abbrev, dollar)
  taxes = @taxes[state_abbrev.to_sym].to_f * 0.01 * dollar.to_f
  return taxes.round(2)
end

puts "---- Task 5: Test ----"
puts calculate_tax('WA', 4000)


# # Task 6

def find_state_for_city(city)
 @cities.select {|state, cities| cities.include?(city)}
end

puts "---- Task 6: Test ----"
puts find_state_for_city('Miami')




# # Task 7

@states = {
  OR: {name: 'Oregon',
      cities: ['Portland', 'Salem']
    },
  
  FL: {name: 'Florida',
      cities: ['Miami', 'Tampa', 'Orlando'],
    },

  CA: {name: 'California',
      cities: ['San Francisco', 'Los Angeles', 'San Diego,' 'Oakland']
    },
  
  NY: {name:'New York',
      cities: ['Buffalo', 'Albany', 'Syracuse']
    },
  
  MI: {name:'Michigan',
     cities: ['Detroit', 'Ann Arbor']
   },

  WA: {name:'Washington',
     cities: ['Seattle', 'Spokane']
   },

  TX:{name:'Texas',
     cities: ['Dallas', 'Austin', 'Houston']  
   },
}


# # Task 8

#Complete 


