class PalmInformationLoyalty < ApplicationLoyalty
  def update?
    user.reader?
  end

  def destroy?
    user.reader?
  end
end
