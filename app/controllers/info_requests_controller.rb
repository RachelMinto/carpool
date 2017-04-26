class InfoRequestsController < ApplicationController
  before_filter :require_user
  before_filter :require_admin, only: :index

  def index
    @info_requests = InfoRequest.all
  end

  def create
    request = InfoRequest.new(carpool_id: params[:id], user_id: current_user.id)

    if request.save
      flash['success'] = "Your request for information has been received. We'll be in touch!"
    else
      flash['danger'] = "Something went wrong. Please try again."
    end

    redirect_to carpools_path
  end

  def sent_info
    request = InfoRequest.find(params[:id])
    if request
      request.info_sent = true
      if request.save
        flash["success"] = "Status of request has been updated."
      end
    else
      flash["danger"] = "Something went wrong."
    end
    redirect_to info_requests_path   
  end

  private

  def info_requests_params
    params.permit(:id)
  end
end
