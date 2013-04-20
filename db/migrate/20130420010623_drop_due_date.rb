class DropDueDate < ActiveRecord::Migration
  def up
  	remove_column :tasks, :duedate
  end

  def down
  	add_column :tasks, :duedate, :date
  end
end
