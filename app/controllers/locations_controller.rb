class LocationsController < ApplicationController
  before_action :authenticate_spree_user!, only: :show
  def show; end
end
