require 'rails_helper'

describe Product, type: :model do
  before do
    @product = build(:product)
  end

  describe 'Associations' do
    it{ should embed_many :variants }
    it{ should embed_many :categories }
  end

  describe 'Validations' do
    it{ should validate_presence_of :name }
    it{ should validate_uniqueness_of :name }
  end

  describe 'Class Methods' do
    before do
      @product.save!
    end

    describe '#in_category' do
      it 'should return only products with a matching category name' do
        category_name = Faker::Commerce.department
        product_with_category = create(:product)
        product_with_category.categories << build(:category, name: category_name)
        Product.in_category(category_name).should == [product_with_category]
      end
    end
  end
end
