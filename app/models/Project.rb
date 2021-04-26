class Project < ActiveRecord::Base

    has_many :tasks 
    belongs_to :user 
    assigned_to :team

end 