class Author < ActiveRecord::Base
<<<<<<< HEAD
  validates :firstname, :surname, presence: true
  has_many :theses
=======
	validates :firstname, :surname, presence: true
	has_many :theses

	def full_name
		"#{firstname} #{surname}"
	end
>>>>>>> d92e416f4c628a4e59c9d2530f4e8204f474694b
end
