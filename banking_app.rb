class Account
    
    attr_reader :name
    attr_reader :balance
    
    def display_balance(pin_number)
        
    puts pin_number == pin ? "Balance: $#{@balance}" : pin_error
    
    end  
    
    
    
    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end
    
    #create a deposit method
    public
    def deposit(pin_number, amount)
      if pin_number == pin
            @balance += amount
            puts "Deposited #{amount}. New Balance: $#{@balance}"
        else
            puts pin_error
        end
    end
    
    public
    def withdraw(pin_number,amount)

         if pin_number == pin
             if (@balance - amount) < 0
                 puts "You don't have enough $$$, homeboy"
            else
                @balance -= amount
                puts "Withdrew #{amount}. New Balance: $#{@balance}"
            end
        else
            puts pin_error
        end
    end
    
    
    #private method
    private
    def pin
        @pin = 1234
    end
    
    private
    def pin_error
        return "Access denied: incorrect PIN."
    end
end

    

checking_account = Account.new("Tuan", 1_000_000)
checking_account.deposit(1235, 1_000_000)
checking_account.withdraw(1234, 2_000_000)