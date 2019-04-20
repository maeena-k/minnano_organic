class HomeController < ApplicationController
  before_action :authenticate_spree_user!, only: :delivery

  def index; end

  def delivery
    @las = La.find(params[:id])
    @hash = Gmaps4rails.build_markers(@las) do |la, marker|
      marker.lat la.latitude
      marker.lng la.longitude
    end
    append_cur_location
  end

  private

  def append_cur_location
    @hash << { lat: action[0], lng: action[1] }
  end

  def action
    @lat_lng = cookies[:lat_lng].split('|')
  end
end
