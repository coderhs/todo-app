class Task < ActiveRecord::Base
  attr_accessible :completed, :task
  validates :task, presence:true,uniqueness:true
end
