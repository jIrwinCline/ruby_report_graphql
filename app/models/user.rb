class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
          :registerable,
          :recoverable, 
          :devise,
          :validatable,
          :trackable,
          :jwt_authenticatable,
          jwt_revocation_strategy: self
  has_many :reports
  # - VALIDATIONS
  validates :email, presence: true
  validates :email, length: { maximum: 255 }
  validates :email, format: { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ }
  validates :fname, presence: true
  validates :fname, length: { maximum: 255 }
  validates :lname, presence: true
  validates :lname, length: { maximum: 255 }

  # Send mail through activejob
  def send_devise_notification(notification, *args)
    devise_mailer.send(notification, self, *args).deliver_later
  end

  # return first and lastname
  def name
    [fname, lname].join(' ').strip
  end
end
