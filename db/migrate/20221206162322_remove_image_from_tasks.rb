class RemoveImageFromTasks < ActiveRecord::Migration[7.0]
  def up
    remove_column :tasks, :image, :string
  end

  def down
    add_column :tasks, :image, :string
  end
end
