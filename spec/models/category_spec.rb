require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Validations' do
    it 'requires a name' do
      category = Category.new(icon: 'fas fa-shopping-cart')
      expect(category.valid?).to be_falsey
      expect(category.errors[:name]).to include("can't be blank")
    end

    it 'requires an icon' do
      category = Category.new(name: 'Shopping')
      expect(category.valid?).to be_falsey
      expect(category.errors[:icon]).to include("can't be blank")
    end
  end
end
