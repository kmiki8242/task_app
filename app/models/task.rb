class Task < ApplicationRecord
  has_many :subtasks, dependent: :destroy, inverse_of: :task
  accepts_nested_attributes_for :subtasks, allow_destroy: true

  validates :complete_status, inclusion: { in: [true, false] }

  with_options presence: true do
    validates :name, length: { in: 1..50 , message: " : 1~50文字で入力して下さい" }
    validates :start_date
  end
end
