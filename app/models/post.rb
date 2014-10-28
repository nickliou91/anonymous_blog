class Post < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts_tag
  has_many :tags , :through => :posts_tag
  validates :title ,:presence => true
  validates :content , :presence => true


end
