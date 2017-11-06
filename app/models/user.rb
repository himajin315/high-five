class User < ApplicationRecord
  validate  :picture_size
  mount_uploader :picture, PictureUploader
  devise :database_authenticatable, :registerable, :validatable, :rememberable, :trackable, :omniauthable, omniauth_providers: [:facebook]

  has_one :palm_information, dependent: :destroy

  enum role: [:general, :reader]
  enum gender: [:male, :female]

  scope :user_palm_information, ->(ids) { joins(:palm_information).where(palm_informations: {id: ids}) }

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.name = auth.extra.raw_info.name
      user.email = auth.extra.raw_info.email
      user.gender = auth.extra.raw_info.gender
      user.password = Devise.friendly_token[0,20]
      user.avatar = auth.info.image
    end
  end

  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
