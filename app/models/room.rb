class Room < ActiveRecord::Base
  belongs_to :chatter
  has_many :messages, dependent: :destroy

  validates :name, presence: true, length: { maximum: 255 }
  validates :chatter, presence: true
end
