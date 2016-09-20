# == Schema Information
#
# Table name: attachments
#
#  id         :integer          not null, primary key
#  content    :text
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#



class Attachment < ActiveRecord::Base
	attr_accessible :content

	belongs_to :post

end
