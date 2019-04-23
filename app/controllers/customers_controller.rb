class CustomersController < ApplicationController
  before_action :authenticate_spree_user!

  def show
    @user = Spree::User.find_by(id: current_spree_user.id)
  end

  def edit
    @user = Spree::User.find_by(id: current_spree_user.id)
  end

  def update
    @user = Spree::User.find_by(id: current_spree_user.id)
    if @user.update_attributes(user_edit_params)
      sign_in @user
      redirect_to root_url
    else
      render edit_customer_path
    end
  end

  def destroy
    @user = Spree::User.find_by(id: current_spree_user.id).destroy
    flash[:success] = 'User deleted successfully'
    redirect_to root_url
  end

  private

  def user_edit_params
    edit_input = [:email, :password, :password_confirmation]
    params.require(:user).permit(edit_input)
  end
end
