class Contact < ApplicationRecord
  validates :email_address, presence: true, uniqueness: true
  validates_presence_of :first_name, :last_name
  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
