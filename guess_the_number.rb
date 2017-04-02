def guess_number guess
  number = 25
  if guess == number
    return "yes you are right"
  elsif guess > number
    return "its too high"
  else
    return "too low"
  end
end


puts guess_number 30
puts guess_number 20
puts guess_number 25
