class Member < ApplicationRecord
    belongs_to :role
    has_many :advertisements
    has_and_belongs_to_many :achievements
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable
    mount_uploader :avatar, AvatarUploader
end
