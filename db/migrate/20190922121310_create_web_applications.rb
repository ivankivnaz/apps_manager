class CreateWebApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :web_applications do |t|
      t.string :name
      t.string :url
      t.string :path

      t.timestamps
    end
  end
end
