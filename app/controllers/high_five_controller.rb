class HighFiveController < ApplicationController
  before_action :authenticate_user!, only: :entory

  def index
  end

  def entory
  end
end
