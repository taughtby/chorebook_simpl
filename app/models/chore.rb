class Chore < ActiveRecord::Base
  attr_accessible :child_id, :completed, :due_date, :name, :points

  #rem to add validations

  belongs_to :child
  scope :completed, where(:completed => true)
  scope :incomplete, where(:completed => false)
end
