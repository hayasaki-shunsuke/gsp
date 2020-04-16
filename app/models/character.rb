class Character < ApplicationRecord
    mount_uploader :picture, PictureUploader
    has_many :result_fight, dependent: :destroy
end
