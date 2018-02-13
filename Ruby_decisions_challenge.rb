# -------------------------------------- loops dawg
a = 0
x = 20
# => 20
x.times do
  a += 1
  puts a
end

x.times do
  puts a
  a -= 1
end

arr = [1, 2, 3, 4, 5, 6, 7 , 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
arr.each do |element|
  puts element
end
# -------------------- validation dawg
num = gets
if num <= 10 && num >= 1
  puts "valid"
else puts "invalid"
end
# ---------------------------------------fuzzbuzz dawg
a = 0
x = 100
x.times do
  a += 1
  if a % 5 == 0 && a % 3 == 0
    puts "FizzBuzz"
  elsif a % 3 == 0
    puts "Fizz"
  elsif a % 5 == 0
    puts "Buzz"
  else puts a
  end
end
 # ---------------------------------- sum these # dawg
 def sum_these_numbers(x, y)
   puts x + y
 end
 # -------------is even
 def is_even(x)
   if x % 2 == 0
     return true
   else
     return false
   end
 end
 # --------------------------capitalize array dawg
 word_array = ["what", "up", "fam"]
 word_array.each do |element|
   puts element.upcase
 end
 #-----------------------------------------methods for days dawg
def method2
  puts "hello"
end

 def method1
   puts method2
 end

method1
#----------------------------------valid_date dawg
def valid_date
  date = [0, 0, 0]
  long_months = [1, 3, 5, 7, 8, 10, 12]
  short_months = [4, 6, 9, 11]
  puts "Enter a month"
  date[0] = gets.to_i
  puts "Enter a day"
  date[1] = gets.to_i
  puts "Enter a year"
  date[2] = gets.to_i


  if short_months.include?(date[0]) && date[1] > 30
    return false
  elsif date[0] == 2 && date[1] > 28 && date[2] % 4 != 0 #february not leap year
    return false
  elsif long_months.include?(date[0]) && date[1] > 31
    return false
  elsif date[0] > 12 || date[0] < 1
    return false
  elsif date[1] < 1
    return false
  elsif date[0] == 2 && date[1] > 29 && date[2] % 4 == 0
    return false
  else
    return true
  end
end

#------------------------------------rock paper scissors dawg **doesnt work**
def rps_game
  rps = ["rock", "paper", "scissors"]
  puts "Player1 RPS?"
  player1 = gets.to_i
  puts "Player2 RPS?"
  player2 = gets.to_i

  if rps[player1] == "rock" && rps[player2] == "paper"
    puts "player2 wins!"
  elsif rps[player1] == "rock" && rps[player2] == "scissors"]
    puts "player1 wins!"
  elsif rps[player1] == "paper" && rps[player2] == "rock"]
    puts "player1 wins!"
  elsif rps[player1] == "paper" && rps[player2] == "scissors"]
    puts "player2 wins!"
  elsif rps[player1] == "scissors" && rps[player2] == "paper"
    puts "player1 wins!"
  elsif rps[player1] == "scissors" && rps[player2] == "rock"]
    puts "player2 wins!"
  elsif rps[player1] == rps[player2]
    puts "Tie Game!"
  end
end
