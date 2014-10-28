class Tag < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts_tag
  has_many :posts , :through => :posts_tag
  validates :tag_name, :presence => true
  validates_uniqueness_of  :tag_name
end
