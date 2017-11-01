class ScholarshipDocument < ActiveRecord::Base
    belongs_to :scholarship
    belongs_to :document

    self.table_name = "scholarships_docs"
end