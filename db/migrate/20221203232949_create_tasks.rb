class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :complete_status
      t.date :start_date
      t.date :end_date
      t.text :url
      t.string :image
      t.text :note

      t.timestamps
    end
  end
end
