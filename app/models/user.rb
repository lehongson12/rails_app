class User < ActiveRecord::Base
	has_many :question
	enum role: [:user, :mod, :supermod]
	after_initialize :set_default_role, :if => :new_record?

	def set_default_role
	    self.role ||= :user
	end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
