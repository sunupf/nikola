class CreateScholarships < ActiveRecord::Migration[5.1]
  def change
    create_table :scholarships do |t|
      t.string :title, limit:255
      t.string :tuition, limit: 10
      t.text :detail
      t.datetime :deadline
      t.string :image_thumb, limit: 255
      t.string :image_original, limit: 255
      t.string :scholarship_url, limit: 255
      t.timestamps
    end
  end
end
