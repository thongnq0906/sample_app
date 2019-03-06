class Micropost < ApplicationRecord
  belongs_to :user
  scope :desc, ->{order created_at: :desc}
  scope :asc, ->{order created_at: :asc}
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140}
  validate  :picture_size

  scope :following_ids, -> (user_id, following_ids) {where(
    "user_id = ? OR user_id IN (?)", user_id, following_ids)}

  private
  def picture_size
    if picture.size > 5.megabytes
      errors.add :picture, "should be less than 5MB"
    end
  end
end
