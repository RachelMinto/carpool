class Admin::CarpoolsController < ApplicationController
  before_filter :require_user
  before_filter :require_admin

  def index
    @carpools = Carpool.all
  end

  def approve
  end

  def require_admin
    if !current_user.admin?
      flash[:error] = "You are not allowed to do that."
      redirect_to home_path unless current_user.admin?
    end
  end
end