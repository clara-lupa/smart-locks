class Change < ApplicationRecord
  belongs_to :lock
  validates :lock, :time_of_change, :set_online, presence: true
end
