class Doctor < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
          authentication_keys: [:email]

  belongs_to :category

  def full_name
    "#{first_name} #{last_name}"
  end
end
