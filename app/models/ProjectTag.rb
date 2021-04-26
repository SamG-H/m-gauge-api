class ProjectTag < ActiveRecord::Base

    belongs_to :task 
    belongs_to :project 

end 