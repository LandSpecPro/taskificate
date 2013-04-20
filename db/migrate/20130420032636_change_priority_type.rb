class ChangePriorityType < ActiveRecord::Migration
  def up
  	change_column :tasks, :priority, :string
  end

  def down
  	change_column :tasks, :priority, :integer
  end
end
