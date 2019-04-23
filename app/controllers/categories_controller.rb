class CategoriesController < ApplicationController
  before_action :authenticate_spree_user!

  def show
    @taxon = Spree::Taxon.find(params[:id])
    @products = Spree::Product.in_taxon(@taxon).including_master
    @taxonomies = Spree::Taxonomy.includes(root: { children: :children })
  end

  def index
    @taxonomies = Spree::Taxonomy.all
    @taxon = Spree::Taxon.all
    @products = Spree::Product.all
  end
end
