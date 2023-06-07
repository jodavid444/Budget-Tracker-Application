require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'validations' do
    it 'requires a name' do
      transaction = Transaction.new(amount: 50.0)
      expect(transaction.valid?).to be_falsey
      expect(transaction.errors[:name]).to include("can't be blank")
    end

    it 'requires an amount greater than or equal to 0' do
      transaction = Transaction.new(name: 'Groceries', amount: -10.0)
      expect(transaction.valid?).to be_falsey
      expect(transaction.errors[:amount]).to include('must be greater than or equal to 0')
    end
  end
end
