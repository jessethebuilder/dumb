class Variant
  include Mongoid::Document

  embedded_in :product

  has_many :order_items

  field :price, type: Float
  validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}

  field :name, type: String
  validates :name, presence: true, uniqueness: {scope: :product}

  field :description, type: String
end
