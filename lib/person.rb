class Person

  name = Person.new
  
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene
  
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def happiness=(new_happiness)
      if new_happiness > 10
        @happiness = 10
      elsif new_happiness < 0
        @happiness = 0
      else
        @happiness = new_happiness
      end
    end
  
    def hygiene=(new_hygiene)
      if new_hygiene > 10
        @hygiene = 10
      elsif new_hygiene < 0
        @hygiene = 0
      else
        @hygiene = new_hygiene
      end
    end
  
    def clean?
      if @hygiene > 7
        return true
      else
        return false
      end
    end
  
    def happy?
      if @happiness > 7
        return true
      else
        return false
      end
    end
  
    def get_paid(salary_amount)
      self.bank_account += salary_amount
      return "all about the benjamins"
    end
  
    def take_bath
      self.hygiene += 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    def work_out
      self.happiness += 2
      self.hygiene -= 3
      return "♪ another one bites the dust ♫"
    end
  
    def call_friend(person)
      self.happiness += 3
      person.happiness += 3
      return "Hi #{person.name}! It's #{self.name}. How are you?"
    end
  
    def start_conversation(person, topic)
      if topic == "politics"
        person.happiness -= 2
        self.happiness -= 2
        return "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        person.happiness += 1
        self.happiness += 1
        return "blah blah sun blah rain"
      else
        return "blah blah blah blah blah"
      end
    end
  
  end