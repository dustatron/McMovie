class User < ActiveRecord::Base
  acts_as_voter
  validates_length_of :tagline, maximum: 25
  validates_length_of :bio, maximum: 50
  validates_length_of :name, maximum: 20
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
