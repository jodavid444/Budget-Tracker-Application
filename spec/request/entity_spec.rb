require 'rails_helper'

RSpec.describe '/entity', type: :request do
  include Devise::Test::IntegrationHelpers

  describe 'GET /new' do
    before do
      @user = User.create(name: 'Fuad', email: 'fuad@gmail.com', password: '123123', password_confirmation: '123123')
      sign_in @user
      @category = Category.create!(name: 'category', icon: 'img', author_id: @user.id)
      get new_entity_path(category_id: @category.id)
    end

    it 'response to html' do
      expect(response.content_type).to include 'text/html'
    end
  end
end
