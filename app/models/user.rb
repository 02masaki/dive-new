class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  EMAIL_VAL = /\A\S+@\S+\.\S+\z/
  PASS_VAL = /\A[a-zA-Z0-9]+\z/

  with_options presence: true do
    validates :nickname
    validates :email, format: {with: EMAIL_VAL}
    validates :password, format: {with: PASS_VAL}
  end
end
