class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :schedule_exercises
  has_many :exercises, through: :schedule_exercises

  def admin?
    admin == true     
  end

end
