# Code your solution here!
require "pry"
def gen_number
  rand(1..6)
end

def ask_guess
  puts "Please guess a number between 1 and 6."
end

def guess_capture
  gets.chomp
end

def correct_guess
  puts "You guessed the correct number!"
end

def wrong_guess(n)
  puts "Sorry! The computer guessed #{n}."
end

def end_game
  puts "Goodbye!"
end

def run_guessing_game
  random_number = gen_number
  ask_guess
  player_guess = guess_capture

  if player_guess == random_number
    correct_guess
  elsif !player_guess == random_number
    wrong_guess(random_number)
  elsif player_guess == "exit"
    end_game
  end
end
