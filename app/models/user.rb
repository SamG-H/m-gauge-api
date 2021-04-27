class User < ActiveRecord::Base

    belongs_to :team 
    has_many :projects, :through => :team 
    has_many :tasks 
    has_many :comments 

end 