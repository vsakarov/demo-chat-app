class Message < ActiveRecord::Base
  belongs_to :chatter
  belongs_to :room

  validates :text, presence: true, length: { maximum: 255 }
  validates :chatter, presence: true
  validates :room, presence: true
end
