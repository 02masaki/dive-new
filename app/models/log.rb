class Log < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  NUM_VAL = /\A[0-9]+\z/
  with_options presence: true do
    validates :suit
    validates :place
    validates :min, format: {with: NUM_VAL}
    validates :depth, format: {with: NUM_VAL}
    validates :transparency, format: {with: NUM_VAL}
    validates :temperature, format: {with: NUM_VAL}
    validates :date
    validates :impressions
  end
end