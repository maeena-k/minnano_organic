class CustomersController < ApplicationController
  before_action :authenticate_spree_user!

  def edit
    @user = Spree::User.find_by(id: current_spree_user.id)
  end

  def update
    @user = User.find_by(id: current_spree_user.id)
    if @user.update_attributes(user_edit_params)
      flash[:success] = "Profile updated successfully!"
      redirect_to :back
    else
      render destroy_user_session_path
    end
  end

  def destroy
  end
end
