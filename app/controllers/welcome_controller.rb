class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :user_has_signed_in
  helper_method :resource_name, :resource, :devise_mapping, :resource_class
  def index

  end

  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end