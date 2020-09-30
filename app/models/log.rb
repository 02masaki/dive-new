class Log < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :suit
    validates :min
    validates :depth
    validates :place
    validates :transparency
    validates :temperature
    validates :date
  end
end