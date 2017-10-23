class HighFiveController < ApplicationController
  before_action :authenticate, only: [:entry, :reading]

  def index
  end

  def entry
  end

  def reading
    authorize!
  end
end
