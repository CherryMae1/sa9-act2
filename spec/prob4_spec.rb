require 'prob4'

RSpec.describe BankAccount do
  let(:account) {BankAccount.new}
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account.deposit(35)
      expect(account.balance).to eq(35)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      account.deposit(35)
      account.withdraw(20)
      expect(account.balance).to eq(15)
    end

    it "does not change the balance if insufficient funds" do
      account.deposit(15)
      account.withdraw(20)
      expect(account.balance).to eq(15)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      account_2 = BankAccount.new
      account_2.deposit(250)
      account_2.withdraw(100)
      account_2.deposit(50)
      expect(account_2.balance).to eq(200)
    end
  end
end
