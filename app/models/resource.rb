class Resource < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 5, maximum: 100 }
  validates :description, presence: true, length: { minimum: 5, maximum: 150 }
  mount_uploader :picture, PictureUploader
  validate :picture_size

  private
    def picture_size
      if picture.size > 1.megabytes
        errors.add(:picture, "should be less than 1MB")
      end
    end
end
