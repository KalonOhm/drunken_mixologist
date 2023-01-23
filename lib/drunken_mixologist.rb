# frozen_string_literal: true

#this is where several "require relatives" should go
require_relative "drunken_mixologist/version"
require_relative "cli.rb"
require_relative "auth.rb"
require_relative "user.rb"

module DrunkenMixologist
  class Error < StandardError; end
  # Your code goes here...
end
