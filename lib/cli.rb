class CLI

  attr_accessor :user
  
  def run
    User.seed #seed/populate user list
    system('clear') #clear terminal at start of program
    welcome #simple greeting to users
    logpage #login or signup page

    while menu != 'exit'
    end

    end_program
  end

  def welcome
    puts "Welcome to the bar. Looking to try a new drink?"
    #TODO add welcome message randomizer?
  end

  def logpage
    response = ''
    while response != 'login' && response != 'register'
      puts "Please login, or register if you are a new user."
      response = gets.chomp #forgot this and ran an infinite loop
    end

    if response == 'login'
      puts "Back for more?"
      login
    else 
      puts "Haven't seen you around before."
      signup
    end
  end

  def signup
    puts "Got some ID?"
    puts ">Enter a username."
    username = gets.chomp
    puts ">Now a password"
    password = gets.chomp
    User.new(username, password)
    login

  end 

  def login
    authenticated = false
    while authenticated == false
      puts "Remind me what's on that ID again?"
      puts ">Enter username"
      username = gets.chomp
      puts ">Enter password"
      password = gets.chomp
      currUser = Auth.authenticate_user(User.all, username, password)
      if currUser
        puts "I remember you now."
        authenticated = true
        @user = currUser
        welcome_user
      else
        puts "That didn't work. Wanna run that by me again?"
      end
    end
  end

  def welcome_user
    puts "Welcome back #{@user.username}. Thirsty for something new?"
  end

  def end_program
    puts "You don't have to go home, but your can't stay here."
  end

  def menu
    puts "What're you thinking for your next glass?"
    puts "(Choose an Option, or Exit the bar)"
    list_options

    input = gets.chomp
    choose_option(input)
    return input
  end

  def list_options
    puts "1. Pick your Poison? (Choose base spirit, random ingredients)"
    puts "2. Let the House Decide... (Random spirit, random ingredients)"
    puts "3. Garnish, my way (Choose an ingredient, returns random cocktail using ingredient)"
    puts "4. Somethin' normal for a change. (Random standard cocktail)"
    puts "5. I'm the designated driver (Random non-alcoholic beverage, possibly random ingredients)"
    puts "6. I'll just have a water."
    # puts "7. I've got an idea for a drink! (Enter ingredients, mixologist will assign random name to cocktail)"
  end

  def choose_option(input)
    case input

    when "1"
      puts "Number 1 chosen"
      puts "Someone who knows what they like. Where should I start?"
      puts "(Enter a spirit to start mixing)"
      spirit = gets.chomp
      # drink_randomizer(spirit)
      # return spirit
      #TODO: randomizer with chosen spirit


    when "2"
      puts "Number 2 chosen"
      puts "Feeling brave, or perhaps foolish..."
      puts "(The mixologist combines bottles like a mad alchemist, experimenting with a new formula)"
      # drink_randomizer
      #TODO: make drink randomizer
      

    when "3"
      puts "Number 3 chosen"
      puts "What garnish were you hankering for?"
      puts "(Enter a garnish or ingredient to start mixing)"
      garnish = gets.chomp
      # drink_randomizer(garnish)
      #TODO: make randomizer
      # return garnish


    when "4"
      puts "Number 4 chosen"
      puts "Ain't no shame in that. I'll make you something standard."
      puts "(The mixologist seems disappointend nonetheless, and grabs some basic bottles)"
      #limited_randomizer
      #TODO: make limited randomizer: rum & coke, something with sprite, long island iced tea, etc.

    
    when "5"
      puts "Number 5 chosen"
      puts "Awfully responsible of you. I'll fix you up something non-alcoholic."
      puts "(The mixologist gives an approving nod, then reaches for his wares)"
      #TODO make random_sober option 
      # random_sober

    when "6"
      puts "Number 6 chosen"
      puts "Really? That's all you want? Okay, fine..."
      puts "(The mixologist gives a dejected sigh, and puts a glass under the tap)"
      # return "water"


    when "7"
      puts "Number 7 chosen"
      puts "Alright, hit me. But I get to name this creation."
      #  drink_crafter
      #TODO: create drink crafter, random name generator

    end
  end
end
