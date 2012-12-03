class Chore < ActiveRecord::Base
  attr_accessible :child_id, :completed, :due_date, :name, :points
  

  # sort out flash message for validations
  validates :name, presence: true
  validates :points, presence: true
  validates :due_date, presence: true


  belongs_to :child
  scope :completed, where(:completed => true)
  scope :incomplete, where(:completed => false)
  
  
  
 
  
end



  