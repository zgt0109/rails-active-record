class CreateAttachments < ActiveRecord::Migration
	def change
		create_table :attachments do |t|
			t.text :content
			t.integer :post_id

			t.timestamps
		end
	end
end