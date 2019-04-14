Spree::StoreController.class_eval do
  before_action :authenticate_spree_user!
end
