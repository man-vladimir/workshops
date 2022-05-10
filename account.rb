# https://www.codecademy.com/courses/learn-ruby/lessons/banking-on-ruby/exercises/well-done

class Account     

    def initialize(name, balance=100)
      @name = name
      @balance = balance
    end

    def display_balance(pin_number)

      puts pin_number == pin ?  "Balance: $#{@balance}. Your account: #{name}":  pin_error
       
    end

    def withdraw(pin_number, amount)

      return puts pin_error if pin_number != pin
      return puts "There are not enough funds in your account #{name}" if amount > balance

      self.balance -= amount
      puts "Withdrew #{amount}. New balance: $#{balance}."      
        
    end   
    
    def deposite(pin_number, amount)

      return puts pin_error if pin_number != pin        
        self.balance += amount
      puts "Received on account #{name} $#{amount}. New balance: $#{balance}."
     
    end

    private

    attr_reader :name
    attr_accessor :balance

    def pin
      @pin = 1234
    end

    def pin_error
      'Access denied: incorrect PIN.'
    end     
end
checking_account = Account.new('my_secret_millions', 1_000_000_000)
checking_account.display_balance(1234)
checking_account.withdraw(1234, 2000000000)
checking_account.deposite(12345, 50000)
checking_account.deposite(1234, 50000)
