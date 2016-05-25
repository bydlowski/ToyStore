class Purchase < ActiveRecord::Base
  belongs_to :toy
  belongs_to :buyer, class_name: 'User'
end
