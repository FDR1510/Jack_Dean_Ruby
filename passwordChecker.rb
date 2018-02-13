# class Validate_password
#
#   puts "Enter a username"
#   username = gets
#   puts "Enter a password"
#   password = gets
#
#   def same(username, password)
#     if username == password
#       return false
#     else return true
#     end
#   end
#
#
#   def long_enough(username, password)
#     if username.length < 6 || password.length < 6
#       return false
#     else return true
#     end
#   end
#
#
#   def does_not_contain_special(username, password)
#     if !password.include?('!' || '#' || '$')
#       return false
#     else return true
#     end
#   end
#
#   def contains_special(username, password)
#     if username.include?('!' || '#' || '$' || ' ')
#       return false
#     else return true
#     end
#   end
# end

  # def validate_password
  #
  #
  #   same(user, pass)
  #   long_enough(user, pass)
  #   does_not_contain_special(user, pass)
  #   contains_special(user, pass)
  #
  #   if same == false
  #     puts "Do username & password again!"
  #   elsif long_enough == false
  #     puts "Password and username must be atleast six characters long!!"
  #   elsif does_not_contain_special == false
  #     puts "Must contain special character!"
  #   elsif contains_special == false
  #     puts "Username can't contain special character!"
  #   else
  #     puts "Account Created"
  #     return true
  # end
  # end

#
puts "Enter a username"
user = gets
puts "Enter a password"
pass = gets

same = false
user_length = false
pass_length = false
pass_special = false
user_special = false
pass_upcase = false
pass_good = false
user_good = false

while same == false
  if user == pass
    puts "Username and Password cannot be the same. Enter a new password"
    password = gets
  else same = true
  end
end

while user_length == false
  if user.length < 6
    puts "Username must be at least 6 characters long. Enter a new username"
    user = gets
  else user_length = true
  end
end


while pass_length == false
if pass.length < 6
  puts "Password must be at least 6 characters long. Enter a new password"
  pass = gets
else pass_length = true
end
end

while pass_special == false
  if !pass.include?('!' || '#' || '$')
    puts "Must put special characters dawwwg. Enter a new password: "
    pass = gets
  else pass_special = true
  end
end

while user_special == false
  if user.include?('!' || '#' || '$' || ' ')
    puts "Can't put special characters dawwwg. Enter a new username: "
    user = gets
  else user_special = true
  end
end


while pass_upcase == false
  if pass == pass.upcase
    puts "Don't capitalize. Enter a new password: "
    pass = gets
  else pass_upcase = true
  end
end

if same == true && user_length == true && pass_length == true && pass_special == true && user_special == true && pass_upcase == true
  pass_good = true
  user_good = true
end

if pass_good == true && user_good == true
  puts "Your account has been created"
end
