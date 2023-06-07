require 'rails_helper'

RSpec.describe Entity, type: :model do
  describe 'validations' do
    it 'requires a name' do
      entity = Entity.new(amount: 50.0)
      expect(entity.valid?).to be_falsey
      expect(entity.errors[:name]).to include("can't be blank")
    end

    it 'requires an amount greater than or equal to 0' do
      entity = Entity.new(name: 'Groceries', amount: -10.0)
      expect(entity.valid?).to be_falsey
      expect(entity.errors[:amount]).to include('must be greater than or equal to 0')
    end
  end
end
