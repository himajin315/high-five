class PalmInformation < ApplicationRecord
  belongs_to :user

  validates :feeling_length, numericality: { only_integer: true }
  validates :feeling_slope, numericality: { only_integer: true }
  validates :knowledge_length, numericality: { only_integer: true }
  validates :knowledge_slope, numericality: { only_integer: true }
  validates :fate_slope, numericality: { only_integer: true }

  enum status: [:unread, :read, :reread]

  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
