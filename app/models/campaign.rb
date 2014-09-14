class Campaign < ActiveRecord::Base
  has_paper_trail

  belongs_to :user
  has_many :characters
  has_many :items

  after_create :create_invite_id

  def create_invite_id
    md5 = Digest::MD5.new
    md5.update "#{self.id}_#{Time.now}"
    self.update(invite_id: md5.hexdigest)
  end

  def owned_by(user)
    self.user_id == user.id
  end

end