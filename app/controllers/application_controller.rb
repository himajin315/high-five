class ApplicationController < ActionController::Base
  include Banken
  protect_from_forgery with: :exception

  rescue_from Banken::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    render file: Rails.root.join('public/404.html'), layout: false, status: 404
  end

  def authenticate
    redirect_to root_path unless user_signed_in?
  end
end
