class Movie < ActiveRecord::Base
    validates_presence_of :name, :title, :category 
    validates_length_of :title, :category, :minimum => 3
    validate do
    errors[:release_date]<<"Cannot be in future" if release_date && release_date > Date.today
    end
def self.search(search)
  if search
   self.where("category like ?", "%#{search}%")
  else
    self.all
  end
end


end
