class InfoRequestsController < ApplicationController
  before_filter :require_user

  def create
    request = InfoRequest.new(info_requests_params.merge!(user_id: current_user.id))

    if request.save
      flash['success'] = "Your request for information has been received. We'll be in touch!"
    else
      flash['danger'] = "Something went wrong. Please try again."
    end

    redirect_to carpools_path
  end

  private

  def info_requests_params
    params.permit(:carpool_id)
  end
end
