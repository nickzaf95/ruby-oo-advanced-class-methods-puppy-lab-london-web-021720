# Add your code here
require 'pry'

class Dog
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def self.print_all
        i = 0
        while i < @@all.size do 
            puts @@all[i].name
            i += 1
        end
    end

    def save
        @@all << self
    end

    def self.clear_all
        @@all.clear 
    end
end

