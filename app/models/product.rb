class Product
  include Mongoid::Document

  embeds_many :variants

  embeds_many :categories

  field :name, type: String
  validates :name, presence: true, uniqueness: true

  field :description, type: String

  scope :in_category, proc{ |category| where('categories.name' => category)}
end
