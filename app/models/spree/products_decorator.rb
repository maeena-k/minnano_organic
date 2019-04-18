Spree::Product.class_eval do
  default_scope -> {order(id: :asc)}
  scope :including_master, -> { includes(master: [:images, :default_price]) }
end
