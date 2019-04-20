Spree::Product.class_eval do
  default_scope -> {order(id: :asc)}
  scope :including_master, -> { includes(master: [:images, :default_price]) }
  scope :related_products, ->(product) { joins(:taxons).including_master.where(spree_taxons: { id: product.taxons }).where.not(id: product.id).distinct }
end
