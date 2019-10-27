require 'rails_helper'

describe Category, type: :model do
  describe 'Associations' do
    it{ should be_embedded_in :product }
  end

  describe 'Validations' do
    it{ should validate_presence_of :name }
    it{ should validate_uniqueness_of(:name).scoped_to(:product) }
  end
end
