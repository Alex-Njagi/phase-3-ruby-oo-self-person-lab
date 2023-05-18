class Person
    attr_reader :name
    attr_accessor :hygiene
    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    def bank_account
       @bank_account 
    end

    def bank_account=(account)
        @bank_account = account
    end

    def happiness
        @happiness
    end

    def happiness=(happy)
        @happiness = happy.clamp(0,10)
    end

    def hygiene
        @hygiene
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0,10)
    end


    def clean?
        hygiene > 7? true : false
    end

    def happy?
        happiness > 7? true : false
    end

    def get_paid amount
        self.bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
        @friend = friend
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation (friend, topic)
        @topic = topic

        if @topic=="politics"
            self.happiness -= 2
            friend.happiness -=2
            return "blah blah partisan blah lobbyist"
        elsif @topic=="weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end