class Tag < ActiveRecord::Base
  attr_accessible :name

  has_many :taggings
  # raises ActiveRecord::HasManyThroughAssociationPolymorphicSourceError:
  # has_many :taggables, :through => :taggings
  has_many :articles, :through => :taggings, :source => :taggable, :source_type => 'Article'

end
