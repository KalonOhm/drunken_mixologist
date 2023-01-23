require 'pry'
require_relative 'auth.rb' 

class User
  extends Auth 
  attr_accessor :id, :username, :password
  @@users = [] #array of all user hashes, with IDs, usernames, and passwords

  #initialize a new user and adds to users array
  def initialize(username, password)
    @username = username
    @password = password
    @id = User.all.count + 1
    @@users << self
  end

  #return all users in array
  def self.all
    @@users
  end

  #populate users array with dummy data
  def self.seed
    users = [{username: "kalon", password: "password"}, {username: "dummy", password: "data"}]

    i = 0

    while i < users.count
      user = users[i]
      User.new(user[:username], create_hash_digest(user[:password]))
      i += 1

    end
  end


  # def self.find(id)
  #   self.all.find { |user| user.id == id }
  # end
end
