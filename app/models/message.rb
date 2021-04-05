class Message < ApplicationRecord
  belongs_to :channel

  validates :content, presence: true
  validates :author, presence: true
end
