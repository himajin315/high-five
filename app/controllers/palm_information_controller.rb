class PalmInformationController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def create
  end

  def edit
    authorize!
  end

  def update
    authorize!

    if current_palm_information.update(palm_information_params)
      redirect_to root_path
    else
      redirect_to entory_path
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
    @palm_information ||= PalmInformation.find(params[:id])
  end

  def reader_user_params
    params.require(:palm_information).permit(:status, :picture, :feeling_length, :feeling_slope, :knowledge_length, :knowledge_slope, :fate_slope)
  end
end
