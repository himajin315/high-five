class HighFiveController < ApplicationController
  before_action :authenticate, only: [:entry, :reading]

  def index
    render layout: 'landing_page'
  end

  def entry
  end

  def reading
    authorize!
    @unread_users = User.user_palm_information(PalmInformation.unread.ids).select(:id, :name, :picture, :updated_at).order(updated_at: :desc)
    @reread_users = User.user_palm_information(PalmInformation.reread.ids).select(:id, :name, :updated_at).order(updated_at: :desc)
    @read_users = User.user_palm_information(PalmInformation.read.ids).select(:id, :name, :updated_at).order(updated_at: :desc)
  end
end
