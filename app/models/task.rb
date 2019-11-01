class Task < ApplicationRecord
  validates :priority, presence: true
  validates :status, presence: true
  
  
  
end
