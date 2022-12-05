class RenameStartDateColumnToSubtasks < ActiveRecord::Migration[7.0]
  def change
    rename_column :subtasks, :start_date, :start_date_subtask
  end
end
