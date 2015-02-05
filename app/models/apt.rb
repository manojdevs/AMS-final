class Apt < ActiveRecord::Base
	belongs_to :user
	has_many :flat
end
