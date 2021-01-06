class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :plans
         has_many :messages

        validates :nickname, presence: true

         PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
        validates_format_of :password, with: PASSWORD_REGEX, length: { minimum: 6 }
        validates_format_of :password_confirmation, with: PASSWORD_REGEX, length: { minimum: 6 }
        validates :email, uniqueness: true, format: { with: /\A\S+@\S+\z/}
end
