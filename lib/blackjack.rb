require "pry"
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  sum = deal_card + deal_card
  sum
  display_card_total(sum)
  sum
  # code #initial_round here
end

def hit?(num)
  prompt_user
  user_input = get_user_input
  # binding.pry
  if user_input == 'h'
    # deal_card
    num += deal_card
  elsif user_input == 's'
    num
  end
end

def invalid_command
  "Please enter a valid command"
  prompt_user
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  deal_card = initial_round
  card_sum = 0
  until card_sum <=21
  hit?(card_sum)
  display_card_total(card_total)
  card_sum += card_total
  end
  end_game(card_sum)

  # code runner here
end
    
