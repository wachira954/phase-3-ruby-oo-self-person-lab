class Person
    attr_reader :name, :happiness , :hygiene
    attr_accessor :bank_account, :friend

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene

    end
    def happiness=(happiness)
       @happiness = if happiness > 10
            10
        elsif happiness < 0
            0
        else 
            happiness
        end
    end
    def hygiene=(hygiene)
       @hygiene = if hygiene > 10
            10
        elsif hygiene < 0
            0
        else 
            hygiene
        end
    end
    def clean?
        self.hygiene > 7 ? true : false
    end
    def happy?
        self.happiness > 7 ? true : false
    end
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"

    end
  
    def call_friend(friend)
        self.happiness += 3
        friend.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic === "politics"
            self.happiness -= 2
            friend.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic === "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            self.happiness +=0
            friend.happiness += 0
            "blah blah blah blah blah"
        end
    end
end 