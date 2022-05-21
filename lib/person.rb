# your code goes here

class Person
    attr_accessor :bank_account
    attr_reader :happiness, :hygiene, :name

    def initialize (name)
        @name = name
        @bank_account = $25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_level)
        if new_level > 10
           @happiness = 10
        elsif new_level < 0
            @happiness = 0
        else
            @happiness = new_level
    end

    def hygiene=(number)
        @hygiene=number
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene =(self.hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = (self.happiness + 2)
        self.hygiene = (self.hygiene - 3)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = (self.happiness + 3)
        friend.happiness = (friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

end