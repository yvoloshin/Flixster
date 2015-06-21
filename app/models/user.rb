class User < ActiveRecord::Base
	has_many :courses
	has_many :enrollments
	has_many :enrolled_courses, :through => :enrollment, :source => :course
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def enrolled_in?(course)
  	enrolled_courses = enrollments.collect do |enrollment|
  		enrollment.course
  	end
  	return enrolled_courses.include?(course)
  end


end
