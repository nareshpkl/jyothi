class College < ActiveRecord::Base
	validates :students, :principal, :administration, :staff, :subject, presence: true
	validates :administration, format: { with: /[a-z0-9]+[a-z0-9_.]*(@){1}[a-z0-9]+(\.){1}[a-z]{2,4}/,
    message: "Enter correct email address" }
end
