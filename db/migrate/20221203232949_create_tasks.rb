class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name,             null: false
      t.boolean :complete_status, default: false
      t.date :start_date,         null: false
      t.date :end_date
      t.text :url
      t.string :image
      t.text :note

      t.timestamps
    end
  end
end
