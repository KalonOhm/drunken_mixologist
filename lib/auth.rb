require 'bcrypt'
require 'pry'

#module for allowing authentication of users so that they can login 
#useful for allowing individuals to save some of their drink mistakes that turned out good.

module Auth 
  #using bcrypt to encrypt password hashes
  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end
  #authenticate, comparing username and password pair to all listed users
  def self.authenticate_user(users, username, password)
    currUser = nil #current user null
    users.each do |user| #each 'loop' function, calling each instance of users a user?
      if user.username == username && user.password == password 
        #if ^user username and password == what was typed in
        currUser = user
        #sets currUser variable to the user that matched; 
        #break this to continue with next part of program
        break;
      end
    end

    currUser #didn't work if you just assign in the if statment, needed a declaration?

  end
end

