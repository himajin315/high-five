class PalmInformation < ApplicationRecord
  belongs_to :user

  enum status:           [:unread, :read, :reread]
  enum feeling_length:   [:feeling_length_short, :feeling_length_normal, :feeling_length_long]
  enum feeling_slope:    [:feeling_slope_middle, :feeling_slope_center, :feeling_slope_index]
  enum knowledge_length: [:knowledge_length_short, :knowledge_length_normal, :knowledge_length_long]
  enum knowledge_slope:  [:knowledge_slope_straight, :knowledge_slope_center, :knowledge_slope_down]
  enum fate_slope:       [:fate_slope_left, :fate_slope_center, :fate_right]

  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
