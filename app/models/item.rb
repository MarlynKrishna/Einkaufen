class Item < ApplicationRecord
    mount_uploader :image_url, ImageUrlUploader # Tells rails to use this uploader for this model.   
   validates :name, presence: true
end
