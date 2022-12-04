class Subtask < ApplicationRecord
  belongs_to :task

  with_options presence: true do
    validates :name, length: { in: 1..50 , message: " : 1~50文字で入力して下さい" }
    validates :start_date
  end
  validates :complete_status, inclusion: { in: [true, false] }
end
