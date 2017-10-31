class CreateScholarships < ActiveRecord::Migration[5.1]
  def change
    create_table :scholarships do |t|
      t.string :title
      t.string :tuition
      t.text :detail
      t.datetime :deadline
      t.string :image_thumb
      t.string :image_original
      t.string :scholarship_url
      t.timestamps
    end
  end
end
