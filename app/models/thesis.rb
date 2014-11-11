class Thesis < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :author

  accepts_nested_attributes_for :author
=======
	validates :name, :abstract, presence: true
	belongs_to :author
	belongs_to :faculty
	accepts_nested_attributes_for :author
>>>>>>> d92e416f4c628a4e59c9d2530f4e8204f474694b
end
