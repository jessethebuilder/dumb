class Category
  include Mongoid::Document

  embedded_in :product

  field :name, type: String
  validates :name, presence: true, uniqueness: {scope: :product}

  field :description, type: String 
end
