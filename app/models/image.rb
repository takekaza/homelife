class Image < ApplicationRecord
  mount_uploader :url, ImageUploader
  belongs_to :home, optional: true
end
