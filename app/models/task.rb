class Task < ActiveRecord::Base
  attr_accessible :completed, :priority, :task
  validates :task, presence:true,uniqueness:true
end
