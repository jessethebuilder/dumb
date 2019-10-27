class OrderItem
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :order

  belongs_to :variant
end
