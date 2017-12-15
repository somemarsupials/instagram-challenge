class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user

  class << self
    def from_params(user_id, params)
      user = User.find(user_id)
      user.posts.create(params)
    end
  end
end
