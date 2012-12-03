class Child < ActiveRecord::Base
  attr_accessible :bank, :dob, :image, :name
  
  #before_save :calculate_bank
  
  validates :name, presence: true
  
  has_many :rewards
  has_many :chores
  
  mount_uploader :image, ImageUploader
 
  
  # def calculate_bank
  #     if self.completed == true
  #       self.child.bank += self.points
  #       self.save
  #     end
  #   end
  
end
