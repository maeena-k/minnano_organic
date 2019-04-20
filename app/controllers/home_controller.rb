class HomeController < ApplicationController
  before_action :authenticate_spree_user!, only: :delivery

  def index; end

  def delivery
    @location = Location.new
  end

  private

  def location_params
    params.require(:location).permit(
      :address, :latitude, :longitude)
  end
end
