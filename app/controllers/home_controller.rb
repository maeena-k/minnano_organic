class HomeController < ApplicationController
  before_action :authenticate_spree_user!, only: :delivery

  def index; end

  def delivery; end
end
