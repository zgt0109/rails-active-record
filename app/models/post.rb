# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#



class Post < ActiveRecord::Base
	attr_accessible :title, :content, :attachments_attributes

	has_many :attachments
	accepts_nested_attributes_for :attachments, :allow_destroy => :true

	validates :title, :content, :presence => true
end
