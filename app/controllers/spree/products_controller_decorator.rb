Spree::ProductsController.class_eval do
  RELATED_PRODUCTS_LIMIT = 3

  def show
    @product = Spree::Product.find(params[:id])
    @related_products = Spree::Product.related_products(@product).limit(RELATED_PRODUCTS_LIMIT)
  end
end
