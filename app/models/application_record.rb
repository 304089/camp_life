class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  scope :mine, -> (user) {where(user_id: user)}
end
