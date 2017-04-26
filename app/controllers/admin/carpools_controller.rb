class Admin::CarpoolsController < ApplicationController
  before_filter :require_user
  before_filter :require_admin

  def index
    @carpools = Carpool.all
  end

  def approve
    @carpool = Carpool.find(params[:id])
    if @carpool
      @carpool.status = "approved"
      if @carpool.save
        flash["success"] = "Carpool has been successfully approved"
      end
    else
      flash["danger"] = "Something went wrong."
    end
    redirect_to admin_carpools_path    
  end

  def deny
    @carpool = Carpool.find(params[:id])
    if @carpool
      @carpool.status = "denied"
      if @carpool.save
        flash["success"] = "Carpool has been successfully denied."
      end
    else
      flash["danger"] = "Something went wrong."
    end
    redirect_to admin_carpools_path    
  end

  def require_admin
    if !current_user.admin?
      flash["danger"] = "You are not allowed to do that."
      redirect_to 'root_path' unless current_user.admin?
    end
  end
end