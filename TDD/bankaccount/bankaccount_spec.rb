require_relative 'bank'
RSpec.describe BankAccount do
  before(:each)do
    @account = BankAccount.new
  end
  it 'has a getter method for retireving the checking account balance' do
      expect(@account.returnChecking).to eq(0)
  end
it "has a getter method for retrieving the total account balance" do
  expect(@account.total).to eq(0)
  end

it "Raises an error if a user tries to withdraw more money than they have in the account" do
  expect{@account.withdraw("checking", 100)}.to raise_error("Can't withdraw more than your balance of #{@account.checking_balance}")
end
it "Raises an error when the user attempts to retrieve the total number of bank account" do
  expect{@account.number_of_accounts}.to raise_error(NoMethodError)
end
it " Raises an error when the user attempts to set the interest rate" do
  expect{@account.interest_rate}.to raise_error(NoMethodError)
end
end
