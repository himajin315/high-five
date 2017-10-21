class HighFiveController < ApplicationController
  before_action :authenticate_user!, only: [:entory, :reading]

  def index
  end

  def entory
  end

  def reading
    authorize!
  end
end
