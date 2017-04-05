# declare 3 items account numberm thats randomly generated, checking, savings

class BankAccount
  attr_reader :account_number, :checking, :saving

  @@number_of_accounts= 0

  def initialize
    @account_number = create_account
    @checking = 0
    @saving = 0
    @@number_of_accounts +=1
    @interest_rate = 0.01
  end

    def balance
      "Checking balance is #{@checking} \n Savings account is #{@saving} \n total balance is #{@checking + @saving}"
    end

    def deposit amount, account
      if account.downcase == "checking"
        @checking += amount
      else
        @saving += amount
      end
    end

    def withdrawal amount, account
      if account.downcase == "checking"
        if @checking = amount < 0
          raise "you currently do not have enough money to withdraw your balance is #{@checking}"
        else
          @checking -= amount
        end
      else
        if @saving = amount < 0
          raise "you currently do not have enough money to withdraw your balance is #{@saving}"
        else
          @saving -= amount
        end
      end
    end

      def self.total_accounts
        @@number_of_accounts
      end

      def account_information
        "Account number: #{account_number} \ncurrent interest_rate #{@interest_rate} \n #{self.balance}"
      end

      private
        def create_account
          Array.new(10).map { rand(1..9) }.join
        end
      end

b= BankAccount.new
puts b.account_information
puts b.balance
