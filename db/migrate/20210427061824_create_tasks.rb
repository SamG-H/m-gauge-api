class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.datetime :deadline
      t.datetime :estimate
      t.integer :user_id
      t.integer :project_id
      t.boolean :is_complete
      t.datetime :completed_at

      t.timestamps
    end
  end
end
