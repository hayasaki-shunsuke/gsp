class Character < ApplicationRecord
    mount_uploader :picture, PictureUploader
end
