class PalmInformationsLoyalty < ApplicationLoyalty
  def edti?
    user.reader?
  end

  def update?
    user.reader?
  end

  def destroy?
    user.reader?
  end
end
