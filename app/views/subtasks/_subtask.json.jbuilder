json.extract! subtask, :id, :name_subtask, :complete_status_subtask, :start_date_subtask, :end_date_subtask, :task_id, :created_at, :updated_at
json.url subtask_url(subtask, format: :json)
