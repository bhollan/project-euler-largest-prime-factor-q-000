require_relative '../lib/largest_prime_factor'

puts "3? #{is_prime?(3)}"
puts "17? #{is_prime?(17)}"
puts "600851475143? #{is_prime?(600851475143)}"
puts largest_prime_factor(500)
puts largest_prime_factor(1151)
puts largest_prime_factor(13195)
puts largest_prime_factor(600851475143)
# 600851475143
