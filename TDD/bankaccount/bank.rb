class BankAccount
   attr_reader :account_number, :checking_balance, :saving_balance
   @@bank_accounts = 0

   def initialize
       @account_number = create_account
       @checking_balance = 0
       @saving_balance = 0
       @@bank_accounts += 1

       @interest_rate = 0.01 # The user can't get or set interest_rate because we didn't add interest_rate in the attr_reader
   end

   def returnChecking
       return @checking_balance
   end

   def returnSaving
       return @saving_balance
   end

   def deposit(account, amount)
       if account == "checking"
           @checking_balance += amount
       elsif account == "saving"
           @saving_balance += amount
       end
   end

   def withdraw(account, amount)
       if account == "checking"
           if amount > @checking_balance
               raise "Can't withdraw more than your balance of #{@checking_balance}"
           else
               @checking_balance -= amount
           end
       elsif  account == "saving"
           if amount > @saving_balance
               raise "Can't withdraw more than your balance of #{@saving_balance}"
           else
               @saving_balance -= amount
           end
       end
   end

   def total
       @total = @saving_balance + @checking_balance
       return @total
   end

   def account_information
       puts "Account Number: #{@account_number}\n"
       puts "Interest Rate: #{@interest_rate}\n"
       puts "Total value in accounts: #{self.total}"
   end

   def self.number_of_accounts
       @@bank_accounts
   end

   def withdrawal(account, amount)
     if account.downcase == "checking"
       if @checking - amount < 0
         raise "Insufficient Funds, you have #{@checking} in this account"
       else
         @checking -= amount
       end
     else
       if @saving - amount < 0
         raise "Insufficient Funds, you have #{@saving} in this account"
       else
         @saving -= amount
       end
     end
   end

   private
       def create_account
           Array.new(10).map { rand(1..9) }.join
       end
end


# my_account = BankAccount.new()
# my_account.deposit("checking", 50)
# my_account.withdraw("checking", 15)
# my_account.deposit("saving", 99)
# my_account.withdraw("saving", 1)
# my_account.account_information
# my_account.create_account # Won't run because create_account is a private method and can only be used by other objects inside the class
