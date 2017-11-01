class ScholarshipDegree < ActiveRecord::Base
    belongs_to :scholarship
    belongs_to :degree

    self.table_name = "scholarships_degrees"
end