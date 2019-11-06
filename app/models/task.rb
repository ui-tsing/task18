class Task < ApplicationRecord
  validates :name, :status, :priority, presence: true
end
