# Enter your procedural solution here!
def is_prime?(target)
  if target==2 || target==3 || target==5
    return true
  elsif target%2==0 || target%3==0
    return false
  end
  candidate = 5
  while candidate<=(Math.sqrt(target))
    if target%candidate==0 || target%(candidate+2)==0
      return false
    end
    candidate+=6
  end

  if target%candidate==0 && candidate!=Math.sqrt(target)
    return false
  end
  return true
end

def largest_prime_factor(target)
  puts "Target: #{target}"
  if is_prime?(target)
    return target
  end
  factors = Array.new()
  primes = Array.new()
  candidate = 2
  while candidate<=(target/2)
    if target%candidate==0
      if factors.none?{|a| candidate%a==0} && is_prime?(candidate)
        primes.push(candidate)
      end
      factors.push(candidate)
    end
    candidate+=1
  end
  factors.sort
  primes.sort
  puts "factors: #{factors.join(" ")}"
  puts "primes: #{primes.join(" ")}"
  puts "largest: #{primes.last}"
  return primes.last
end
