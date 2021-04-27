class Project < ActiveRecord::Base

    has_many :tasks 
    belongs_to :team

end 