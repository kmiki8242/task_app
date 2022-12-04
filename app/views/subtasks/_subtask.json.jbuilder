json.extract! subtask, :id, :name, :complete_status, :start_date, :end_date, :task_id, :created_at, :updated_at
json.url subtask_url(subtask, format: :json)
