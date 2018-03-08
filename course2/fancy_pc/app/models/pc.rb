class Pc < ApplicationRecord

  def self.primary_key
    puts "I'm overriding primary_key class method"
  end

  def self.hh
    puts "i'm doing hh"
  end

end
