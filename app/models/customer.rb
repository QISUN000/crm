class Customer < ApplicationRecord
  validates :full_name, presence: true
  validates :email_address, format: { with: URI::MailTo::EMAIL_REGEXP, allow_blank: true }
end
