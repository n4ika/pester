class Message < ApplicationRecord
  belongs_to :project
  enum sender: { user: 0, ai: 1, system: 2 }
end
