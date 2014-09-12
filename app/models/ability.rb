class Ability < ActiveRecord::Base
  has_paper_trail

  belongs_to :character

end