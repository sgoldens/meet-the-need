class Topic < ActiveRecord::Base
  has_many :projects
  has_many :developers

end
