class CreateScholarshipAttributes < ActiveRecord::Migration[5.1]
  def change
    # Create table document
    create_table :documents do |t|
      t.string :name, limit: 255
      t.timestamps
    end

    # Create table degrees
    create_table :degrees do |t|
      t.string :name, limit: 8
      t.string :alias
      t.timestamps
    end

    # Create table countries
    create_table :countries do |t|
      t.string :name, limit: 100
      t.string :region, limit: 25
      t.timestamps
    end

    # Create table scholarships_countries
    create_table :scholarships_countries do |t|
      t.integer :scholarship_id
      t.integer :country_id
      t.timestamps
    end
    add_foreign_key :scholarships_countries, :scholarships, column: :scholarship_id, on_delete: :restrict, on_update: :cascade
    add_foreign_key :scholarships_countries, :countries, column: :country_id, on_delete: :restrict, on_update: :cascade

    # Create table scholarships_degrees
    create_table :scholarships_degrees do |t|
      t.integer :scholarship_id
      t.integer :degree_id
      t.timestamps
    end
    add_foreign_key :scholarships_degrees, :scholarships, column: :scholarship_id, on_delete: :restrict, on_update: :cascade
    add_foreign_key :scholarships_degrees, :degrees, column: :degree_id, on_delete: :restrict, on_update: :cascade

    # Create table scholarships_docs
    create_table :scholarships_docs do |t|
      t.integer :scholarship_id
      t.integer :document_id
      t.timestamps
    end
    add_foreign_key :scholarships_docs, :scholarships, column: :scholarship_id, on_delete: :restrict, on_update: :cascade
    add_foreign_key :scholarships_docs, :documents, column: :document_id, on_delete: :restrict, on_update: :cascade

  end
end
