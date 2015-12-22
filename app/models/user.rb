class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  extend FriendlyId
  friendly_id :org_name, use: :slugged

  def open!
    self.update_attribute(:open, true)
  end

  def close!
    self.update_attribute(:open, false)
  end
end
