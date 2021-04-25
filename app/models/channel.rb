class Channel < ApplicationRecord
  has_many :messages, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, exclusion: { in: ['No Channel Selected'], message: "%{value} is reserved." }
end
