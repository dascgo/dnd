class Item < ActiveRecord::Base
  has_paper_trail

  belongs_to :character
  belongs_to :campaign

end