require 'rails_helper'

describe OrderItem, type: :model do
  describe 'Associations' do
    it{ should be_embedded_in :order }

    it{ should belong_to :variant }
  end

  describe 'Validations' do
  end
end
