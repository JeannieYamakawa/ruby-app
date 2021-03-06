class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :messages,  :dependent => :delete_all
    has_many :comments,  :through => :messages, :dependent => :delete_all


    def email_required?
        false
    end

    def email_changed?
        false
    end


end
