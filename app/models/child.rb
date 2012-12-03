class Child < ActiveRecord::Base
  attr_accessible :bank, :dob, :image, :name
  
  # before_save :calculate_bank
  
  validates :name, presence: true
  
  has_many :rewards
  has_many :chores
  
  mount_uploader :image, ImageUploader
 
 
  
  # def calculate_bank
  #      if self.chores.completed == true 
  #          self.bank += self.chores.points
  #          self.save
  #      else
  #        
  #      end  
  #  end
  
end
