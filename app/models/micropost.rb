class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id, :photo
  has_attached_file :photo   
end
