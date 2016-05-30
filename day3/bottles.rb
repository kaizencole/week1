## REQUIRED STEPS

# 1. Prompt for dollar amount.
# 2. Buy first_beer with dollar amount through buy_beer method.
# 3. Recycle first_beer. Your input will be empty_bottles and caps. 
      # Your output will be free_beer, empty_bottles, and caps.
      # Add empty_bottles recycled to recycled_bottles.
      # Add free_beer to total_beer.
# 4. Recycle again, interatively, until free_beer is zero.
# 5. Output: total_beer and recycled_bottles.

## 

##  Step 1. Prompt for dollar amount.

  PRICE = 2
  
  puts "How much money would you like to spend?"
  dollars = gets.chomp

## Step 2. Buy first_beer and set @free_beer and @total_beer.

  first_beer = (dollars.to_i / PRICE).to_i
  puts "You can first purchase #{first_beer} beers."

  @free_beer = 0
  @total_beer = [first_beer]

## Step 3. Recycle first_beer with recycle method.

  empty_bottles = first_beer
  caps = first_beer
  @remaining_bottles = 0
  @remaining_caps = 0
  @recycled_bottles = []
  @recycled_caps = []

  def recycle(empty_bottles, caps)
    @free_beer = (empty_bottles / 2).to_i + (caps / 4).to_i
    @remaining_bottles = (empty_bottles % 2).to_i
    @remaining_caps = (caps % 4).to_i
    @recycled_bottles.push ((empty_bottles / 2).to_i)
    @recycled_caps.push ((caps / 2).to_i)
    @total_beer.push (@free_beer)
    puts "Then you can trade in your recycled bottles for #{@free_beer} more bottles of beer."
  end

  recycle(empty_bottles, caps)

    empty_bottles = @remaining_bottles + @free_beer
    caps = @remaining_caps + @free_beer

## Step 4. Recycle iteratively until free_beer is zero.

  while @free_beer > 0 do

    recycle(empty_bottles, caps)

    empty_bottles = @remaining_bottles + @free_beer
    caps = @remaining_caps + @free_beer

  end

## Step 5. Output total_beer and recycled_bottles

  puts "The total number of beers you can purchase is #{@total_beer.inject(:+)}"
  puts "The number of free beers from recycling bottles is #{@recycled_bottles.inject(:+)}"
  puts "The number of free beers from recycling caps is #{@recycled_caps.inject(:+)}"
  puts "You still have #{@remaining_bottles} bottles and #{@remaining_caps} caps left over that you could trade in."
  


