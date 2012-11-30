class Article < ActiveRecord::Base
  attr_accessible :title

  has_many :taggings, :as => :taggable
  has_many :tags, :through => :taggings

end
