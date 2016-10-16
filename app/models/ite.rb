class Ite < ApplicationRecord

	has_attached_file :itexml,
									:storage => :s3,
							    :s3_credentials => {
							      :bucket => ENV['capcalera_s3_bucket_name'],
							      :access_key_id => ENV['capcalera_aws_access_key_id'],
							      :secret_access_key => ENV['capcalera_aws_secret_access_key'],
							      :s3_region => ENV['capcalera_aws_region']
							    }
                  
	validates_attachment_content_type :itexml, content_type: "text/xml"

end
