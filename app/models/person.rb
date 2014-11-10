class Person < ActiveRecord::Base

validates :date_of_birth, presence: true, uniqueness: true
validates :first_name, presence: true
validates :last_name, presence: true

end
