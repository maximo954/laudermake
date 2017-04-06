module DevisePermit
  extend ActiveSupport::Concern

  included do
    before_filter :configure_permitted_param, if: :devise_controller?
  end

  def configure_permitted_param
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
