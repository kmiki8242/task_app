class RenameNameColumnToSubtasks < ActiveRecord::Migration[7.0]
  def change
    rename_column :subtasks, :name, :name_subtask
  end
end
