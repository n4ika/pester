class Task < ApplicationRecord
  belongs_to :project
  enum status: { pending: 0, completed: 1 }
end
