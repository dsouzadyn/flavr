class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, confirmation: true, uniqueness: true
  validates :email_confirmation, presence: true
  validates :password, presence: true, length: { minimum: 8 }

  has_secure_password
  has_many :comments, :dependent => :destroy

  def name
    [first_name, last_name].join " "
  end
end
