class HighFiveLoyalty < ApplicationLoyalty
  def reading?
    user.reader?
  end
end
