class Ite < ApplicationRecord

	has_attached_file :itexml
	validates_attachment_content_type :itexml, content_type: "text/xml"

end
