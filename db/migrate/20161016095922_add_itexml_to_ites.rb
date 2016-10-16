class AddItexmlToItes < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :ites, :itexml
  end
end
