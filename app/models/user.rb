class User < ApplicationRecord
  
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  validates :phone, presence: true
  # validates :add_role, presence: true


  def assign_default_role
    self.add_role(:bidder) if self.roles.blank?
  end

end
