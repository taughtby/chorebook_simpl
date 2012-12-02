class Child < ActiveRecord::Base
  attr_accessible :bank, :dob, :image, :name
  
  has_many :rewards
  has_many :chores
  
  mount_uploader :image, ImageUploader
end
