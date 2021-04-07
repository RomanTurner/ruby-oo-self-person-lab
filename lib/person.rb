# your code goes here

# todo[X] get paid/receive payments
# todo[] take a bath
# todo[] call a friend
# todo[] start a conversation
# todo[] state if they are happy and/or clean
require 'pry'

class Person
    attr_accessor :bank_account 
    attr_reader :name, :happiness, :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name, @bank_account, @happiness, @hygiene = name, bank_account, happiness, hygiene
    end

    def happiness=(number)
        @happiness = number.clamp(0,10)
    end

    def hygiene=(number)
        @hygiene = number.clamp(0,10)
    end

    def clean?
        @hygiene > 7
    end
    
    def happy?
        @happiness > 7
    end

    def get_paid(amount)
        @bank_account = @bank_account + amount
       return 'all about the benjamins'
    end
    
    def take_bath
       self.hygiene = @hygiene + 4
       return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3
        "♪ another one bites the dust ♫"
    end


    def call_friend(friend)
            friend.happiness= friend.happiness + 3
            self.happiness = @happiness + 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        case topic
        when "politics"   
             person.happiness= person.happiness - 2
             self.happiness = @happiness - 2
           return 'blah blah partisan blah lobbyist'
        when "weather"   
             person.happiness= person.happiness + 1
             self.happiness = @happiness + 1
           return "blah blah sun blah rain"
        else 
           return "blah blah blah blah blah"
        end

    end
    

end

binding.pry