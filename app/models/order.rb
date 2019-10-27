class Order
  include Mongoid::Document
  include Mongoid::Timestamps

  embeds_many :order_items
end
