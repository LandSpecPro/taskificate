class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :task
      t.integer :priority
      t.boolean :completed
      t.boolean :overdue
      t.date :duedate
      t.string :created_at
      t.string :updated_at

      t.timestamps
    end
  end
end
