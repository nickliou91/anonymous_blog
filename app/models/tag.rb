class Tag < ActiveRecord::Base
  # Remember to create a migration!
  has_many :poststags
  has_many :posts , :through => :poststags
  validates :tag_name :presence = true
end
