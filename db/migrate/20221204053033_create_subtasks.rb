class CreateSubtasks < ActiveRecord::Migration[7.0]
  def change
    create_table :subtasks do |t|
      t.string :name
      t.boolean :complete_status, default: false
      t.date :start_date
      t.date :end_date
      t.string :task_id

      t.timestamps
    end
  end
end
