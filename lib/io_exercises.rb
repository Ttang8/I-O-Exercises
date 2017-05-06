# I/O Exercises
#
# * Write a `guessing_game` method. The computer should choose a number between
#   1 and 100. Prompt the user to `guess a number`. Each time through a play loop,
#   get a guess from the user. Print the number guessed and whether it was `too
#   high` or `too low`. Track the number of guesses the player takes. When the
#   player guesses the number, print out what the number was and how many guesses
#   the player needed.
# * Write a program that prompts the user for a file name, reads that file,
#   shuffles the lines, and saves it to the file "{input_name}-shuffled.txt". You
#   could create a random number using the Random class, or you could use the
#   `shuffle` method in array.
def guessing_game
  numbers = (1..100).to_a
 computer_choose_num = numbers.shuffle[0]
 trys = 0
 guess = 0
 puts "Guess a number between 1 and 100"

 until guess == computer_choose_num
   puts "Guess a Number!"
   guess = gets.chomp.to_i

   if guess < computer_choose_num
     puts "#{guess} is too low! Try again!"
   elsif guess > computer_choose_num
     puts "#{guess} is too high! Try again!"
   end
   trys += 1
 end

 puts "You guessed the right number #{computer_choose_num} in #{trys} trys!"
end

def shuffle_text
  puts "Input a file name to shuffle text."
  input = gets.chomp
  text = File.readlines("#{input}.txt")
  shuffled_text = text.shuffle
  
  File.open("#{input}-shuffled.txt", "w") do |f|
    f.puts shuffled_text
  end
end
