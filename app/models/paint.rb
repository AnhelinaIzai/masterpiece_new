class Paint < ApplicationRecord
	belongs_to :user

    mount_uploader :picture, PicturesUploader
    has_one :category
    validates :user_id, :name, :description, :price, presence: true

    
end
