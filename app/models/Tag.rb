class Tag < ActiveRecord::Base

    belongs_to :project, :through => :projecttags, :source_type => 'Task' 
    
    after_create :set_searchable 
    scope :searchable 

    def set_searchable 
        self.searchable = true 
    end 

    def tag_list 
        self.tags.collect do |tag| 
            tag.name 
        end.join(", ")
    end 

    def tag_list=(tags_string)
        tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq 
        new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name)}
        self.tags = new_or_found_tags
    end 

end 