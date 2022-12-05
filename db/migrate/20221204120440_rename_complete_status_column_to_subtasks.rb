class RenameCompleteStatusColumnToSubtasks < ActiveRecord::Migration[7.0]
  def change
    rename_column :subtasks, :complete_status, :complete_status_subtask
  end
end
