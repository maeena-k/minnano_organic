class CategoriesController < ApplicationController
  def show
    @taxon = Spree::Taxon.find(params[:id])
    @products = Spree::Product.in_taxon(@taxon).including_master
    @taxonomies = Spree::Taxonomy.includes(root: { children: :children })
  end
end
