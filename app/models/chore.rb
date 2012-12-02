class Chore < ActiveRecord::Base
  attr_accessible :child_id, :completed, :due_date, :name, :points
   before_save :calculate_bank
  #rem to add validations

  belongs_to :child
  scope :completed, where(:completed => true)
  scope :incomplete, where(:completed => false)
  
  def calculate_bank
     if self.completed == true
        self.child.bank += self.points
        self.save
     end
  end
  
end



  
