class Location < ActiveRecord::Base
  # Remember to create a migration!
  has_many :photos
end
