require 'rails_helper'

describe Order, type: :model do
  describe 'Associations' do
    it{ should embed_many :order_items }
  end

  describe 'Validations' do
  end
end
