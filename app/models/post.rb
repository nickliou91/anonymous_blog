class Post < ActiveRecord::Base
  # Remember to create a migration!
  has_many :poststags
  has_many :tags , :through => :poststags
  validates :title ,:presence => true
  validates :content , :presence => true


end
