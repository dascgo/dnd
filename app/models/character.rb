class Character < ActiveRecord::Base
  has_paper_trail

  belongs_to :user
  belongs_to :campaign
  has_many :abilities
  has_many :items

  def create_abilities!
    [
      { :name => "Strength",      :value => 0, :modifier => 0, :description => "Measure of physical abilities." },
      { :name => "Constitution",  :value => 0, :modifier => 0, :description => "Measure of physical health." },
      { :name => "Dexterity",     :value => 0, :modifier => 0, :description => "Measure of balance, agility." },
      { :name => "Intelligence",  :value => 0, :modifier => 0, :description => "Measure of intelligence." },
      { :name => "Wisdom",        :value => 0, :modifier => 0, :description => "Measure of perception." },
      { :name => "Charisma",      :value => 0, :modifier => 0, :description => "Measure of personality." }
    ].each do |ability|
      self.abilities.create(ability)
    end
  end

end