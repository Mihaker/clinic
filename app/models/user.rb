class User < ApplicationRecord
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  validates :phone, uniqueness: true


  def full_name
    "#{first_name} #{last_name}"
  end

  def email_required?
    false
  end

  def email_changed?
    false
  end        
end
