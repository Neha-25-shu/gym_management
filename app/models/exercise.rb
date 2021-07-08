class Exercise < ApplicationRecord
    has_many :schedule_exercises
    has_many :users, through: :schedule_exercises

    mount_uploader :video, VideoUploader 
    mount_uploader :image, ImageUploader 
end
