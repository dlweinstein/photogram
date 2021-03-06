class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  has_many   :fans,
             :through => :likes,
             :source => :user

  # Validations

end
