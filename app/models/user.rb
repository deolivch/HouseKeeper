class User < ActiveRecord::Base
	has_secure_password
	has_attached_file :image

	validates :name, presence: true, length: {maximum: 50}
	validates :password, presence: true, length: {minimum: 6}

	VALID_EMAIL_FORMAT = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	validates :email, presence: true, length: {maximum: 260}, format: {with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
	before_save {self.email = email.downcase}

	validates_attachment :image, content_type: {content_type:["image/jpeg","image/gif","image/png"]}
end
