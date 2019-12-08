class Task < ApplicationRecord
  validates :name, :status, :priority, presence: true
  enum status: {removed: 0, active: 1, ongoing: 2, finished: 3}
  enum priority: {low: 1, mid: 2, high:3}
end
