# recursion

# Exercise 1 - sum_to
# Write a function sum_to(n) that uses recursion to calculate the sum from 1 to n (inclusive of n).

def sum_to(n)
  return nil if n < 0
  return 1 if n <= 1
  sum_to(n - 1) + n
end

# Test Cases
puts "sum_to"
puts sum_to(5) == 15
puts sum_to(1) == 1
puts sum_to(9) == 45
puts sum_to(-8) == nil


# Exercise 2 - add_numbers
# Write a function add_numbers(nums_array) that takes in an array of Fixnums and returns the sum of those numbers.
# Write this method recursively.

def add_numbers(nums_array)
  return nil if nums_array.empty?
  return nums_array.first if nums_array.length == 1
  add_numbers(nums_array[1..-1]) + nums_array.first
end

# Test Cases
puts "add_numbers"
puts add_numbers([1,2,3,4]) == 10
puts add_numbers([3]) == 3
puts add_numbers([-80,34,7]) == -39
puts add_numbers([]) == nil

# Exercise 3 - Gamma Function
# Let's write a method that will solve Gamma Function recursively.
# The Gamma Function is defined Γ(n) = (n-1)!.

def gamma_fnc(n)
  return nil if n < 1
  return 1 if n == 1
  gamma_fnc(n - 1) * (n - 1)
end

# Test Cases
puts "gamma_fnc"
puts gamma_fnc(0) == nil
puts gamma_fnc(1) == 1
puts gamma_fnc(4) == 6
puts gamma_fnc(8) == 5040

# Exercise 4 - Ice Cream Shop
# Write a function ice_cream_shop(flavors, favorite) that takes in an array of ice cream flavors available at the ice cream shop,
# as well as the user's favorite ice cream flavor. Recursively find out whether or not the shop offers their favorite flavor.

def ice_cream_shop(flavors, favorite)
  return false if flavors.empty?
  return true if flavors.first == favorite
  ice_cream_shop(flavors[1..-1], favorite)
end

# Test Cases
puts "ice_cream_shop"
puts ice_cream_shop(['vanilla', 'strawberry'], 'blue moon') == false
puts ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea') == true
puts ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio') == false
puts ice_cream_shop(['moose tracks'], 'moose tracks') == true
puts ice_cream_shop([], 'honey lavender') == false

# Exercise 5 - Reverse
# Write a function reverse(string) that takes in a string and returns it reversed.

def reverse(str)
  return str if str.length <= 1
  reverse(str[1..-1]) + str[0]
end

# Test Cases
puts "reverse"
puts reverse("house") == "esuoh"
puts reverse("dog") == "god"
puts reverse("atom") == "mota"
puts reverse("q") == "q"
puts reverse("id") == "di"
puts reverse("") == ""



# MAX_STACK_SIZE = 200
# tracer = proc do |event|
#   if event == 'call' && caller_locations.length > MAX_STACK_SIZE
#     fail "Probable Stack Overflow"
#   end
# end
# set_trace_func(tracer)
