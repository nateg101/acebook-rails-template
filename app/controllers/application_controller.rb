class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  protected
  def after_sign_in_path_for(_resource)
    "/#{current_user.id}"
  end

  def after_sign_out_path_for(_resource)
    "/"

  end

end
