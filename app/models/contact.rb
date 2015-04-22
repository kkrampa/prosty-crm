class Contact < ActiveRecord::Base
  belongs_to :user
  @per_page = 5
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
end
