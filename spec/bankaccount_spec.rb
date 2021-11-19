require 'bankaccount.rb'

describe BankAccount do
    it 'can create instance of bank account' do
        bank_account = BankAccount.new
        expect(bank_account).to be_kind_of(BankAccount)
    end
end