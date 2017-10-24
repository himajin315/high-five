class PalmInformationsController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def create
  end

  def edit
    authorize!

    @palm_information = current_palm_information
  end

  def update
    authorize!

    if current_palm_information.update(palm_information_params)
      current_palm_information.read!
      redirect_to reading_path
    else
      redirect_to edit_user_palm_information_path
    end
  end

  def destroy
    authorize!

    if current_palm_information.destroy
      redirect_to root_path
      else
      render :edit
    end
  end

  private
  def current_palm_information
    @palm_information ||= PalmInformation.find(params[:user_id])
  end

  def palm_information_params
    params.permit(:status, :picture, :feeling_length, :feeling_slope, :knowledge_length, :knowledge_slope, :fate_slope, :user_id)
  end
end
