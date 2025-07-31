class Contact < ApplicationRecord
  validates :email_address, presence: true, uniqueness: true
  validates_presence_of :first_name, :last_name
end
