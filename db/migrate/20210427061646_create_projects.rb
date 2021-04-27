class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.boolean :is_complete
      t.datetime :deadline
      t.datetime :estimate
      t.datetime :completed_at
      t.integer :team_id

      t.timestamps
    end
  end
end
