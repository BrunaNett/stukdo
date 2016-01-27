class Task < ActiveRecord::Base
	belongs_to :user

	validates :user_id, presence: true #everytime a task is created make sure there is a user_id associated with it
	validates :content, presence: true #prevents user from adding empty task - tasks w/o content

	auto_html_for :content do
		html_escape
		image
		youtube(:width => "100%", :height => 250, :autoplay => false)
		link :target => "_blank", :rel => "nofollow"
		simple_format
	end
end

