class Task < ActiveRecord::Base
  attr_accessible :completed, :created_at, :overdue, :priority, :task, :updated_at
  after_initialize :init
  def init
  	self.priority ||= 'green'
  	self.overdue ||= false
  	self.completed ||= false
  end
end
