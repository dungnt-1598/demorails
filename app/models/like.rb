class Like < ApplicationRecord
  belongs_to :user
  belongs_to :tagetable
  scope :liked_by, -> { where(user_id: user_id) }
end
