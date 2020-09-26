class Video < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  mount_uploader :video, VideoUploader
  belongs_to_active_hash :category
  belongs_to :user
  has_one_attached :image
  has_one_attached :video
end
