json.extract! task, :id, :name, :complete_status, :start_date, :end_date, :url, :note, :created_at, :updated_at
json.url task_url(task, format: :json)
