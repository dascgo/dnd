class Campaign < ActiveRecord::Base
  has_paper_trail

  belongs_to :user
  has_many :characters
  has_many :items

end