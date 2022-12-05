class RenameEndDateColumnToSubtasks < ActiveRecord::Migration[7.0]
  def change
    rename_column :subtasks, :end_date, :end_date_subtask
  end
end
