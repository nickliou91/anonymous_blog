class Post < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts_tag
  has_many :tags , :through => :posts_tag , :dependent => :destroy, :foreign_key => 'post_id'
  validates :title ,:presence => true
  validates :content , :presence => true

  before_destroy :clear_options


 
end
