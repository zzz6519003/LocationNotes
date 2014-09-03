class Note < ActiveRecord::Base

  belongs_to :user
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  validates_presence_of :title

end
