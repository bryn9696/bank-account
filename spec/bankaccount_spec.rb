require 'bankaccount.rb'

describe BankAccount do
    it 'can create instance of bank account' do
        bank_account = BankAccount.new
        expect(bank_account).to be_kind_of(BankAccount)
    end

    it 'can respond to balance' do
        bank_account = BankAccount.new
        expect(bank_account).to respond_to :balance
    end

    it 'should show users balance' do
        bank_account = BankAccount.new
        expect(bank_account.balance).to eq(0)
    end

    it 'should respond to deposit' do
        bank_account = BankAccount.new
        expect(bank_account).to respond_to(:deposit).with(1).argument
    end

    it 'updates balance when user deposit money into bank account' do
        bank_account = BankAccount.new
        bank_account.deposit(10)
        expect(bank_account.balance).to eq(10)
    end
end