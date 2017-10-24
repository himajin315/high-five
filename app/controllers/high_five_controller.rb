class HighFiveController < ApplicationController
  before_action :authenticate, only: [:entry, :reading]

  def index
  end

  def entry
  end

  def reading
    authorize!

    unread_ids = PalmInformation.unread.ids
    @unread_users = User.where(id: PalmInformation.unread.ids).select(:id, :name, :updated_at).order(updated_at: :desc)
    reread_ids = PalmInformation.reread.ids
    @reread_users = User.where(id: PalmInformation.reread.ids).select(:id, :name, :updated_at).order(updated_at: :desc)
    read_ids = PalmInformation.read.ids
    @read_users = User.where(id: PalmInformation.read.ids).select(:id, :name, :updated_at).order(updated_at: :desc)
  end
end
