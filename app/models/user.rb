class User < ActiveRecord::Base
  has_many :notes
  has_many :videos
  has_secure_password

  def student?
    true if permission_type == "student"
  end

  def instructor?
    true if permission_type == "instructor"
  end

  def role
    permission_type
  end
end