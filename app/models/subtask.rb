class Subtask < ApplicationRecord
  belongs_to :task, inverse_of: :subtasks

  with_options presence: true do
    validates :name_subtask, length: { in: 1..50 , message: " : 1~50文字で入力して下さい" }
    validates :start_date_subtask
  end

  validates :complete_status_subtask, inclusion: { in: [true, false] }
end
