require 'rails_helper'

describe Variant, type: :model do
  describe 'Associations' do
    it{ should be_embedded_in :product }

    it{ should have_many :order_items }
  end

  describe 'Validations' do
    it{ should validate_presence_of :name }
    it{ should validate_uniqueness_of(:name).scoped_to(:product) }

    it{ should validate_presence_of :price }
    it{ should validate_numericality_of(:price).greater_than_or_equal_to(0) }
  end
end
