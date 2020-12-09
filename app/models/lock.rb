class Lock < ApplicationRecord
  has_many :changes
  validates :lock_id, :kind, :online, presence: true
end
