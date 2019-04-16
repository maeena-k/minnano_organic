Spree::Product.class_eval do
  scope :including_master, -> { includes(master: [:images, :default_price]) }
end
