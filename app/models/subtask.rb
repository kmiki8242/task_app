class Subtask < ApplicationRecord
  belongs_to :task, inverse_of: :subtasks

  validates :name_subtask, length: { in: 0..50 , message: " : 50文字以内で入力して下さい" }
  validates :complete_status_subtask, inclusion: { in: [true, false] }
end
