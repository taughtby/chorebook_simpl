class Reward < ActiveRecord::Base
  attr_accessible :child_id, :costs, :image, :name, :rewarded
end
