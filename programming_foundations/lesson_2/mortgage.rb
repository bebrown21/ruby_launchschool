# Mortgage Calculator

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  loan_amount = ''
  loop do
    prompt("What's the load amount?")
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      break
    else
      prompt("That's not a valid number")
    end
  end

  annual_percent_rate = ''
  loop do
    prompt("What's the annual percentage rate?")
    annual_percent_rate = gets.chomp

    if valid_number?(annual_percent_rate)
      annual_percent_rate = annual_percent_rate.to_f / 100
      break
    else
      prompt("That's not a valid number")
    end
  end

  loan_duration = ''
  loop do
    prompt("What's the loan duration in years?")
    loan_duration = gets.chomp

    if valid_number?(loan_duration)
      break
    else
      prompt("That's not a valid number")
    end
  end

  monthly_interest_rate = annual_percent_rate / 12
  months = loan_duration.to_i * 12

  monthly_payment = loan_amount.to_f * (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**-months.to_i))

  prompt("Your monthly payment is $#{format('%02.2f',monthly_payment)}")

  prompt("You need another calculation?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Goodbye! Thanks for using our Calculator")