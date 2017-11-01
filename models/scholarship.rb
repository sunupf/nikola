class Scholarship < ActiveRecord::Base
    has_many :scholarship_documents
    has_many :documents, through: :scholarship_documents

    has_many :scholarship_degrees
    has_many :degrees, through: :scholarship_degrees

    def as_json(option = {})
        {
            id: id,
            title: title,
            tuition: tuition,
            deadline: deadline,
            image_thumb: image_thumb,
            image_original: image_original,
            documents: documents.as_json,
            degrees: degrees.as_json
        }
    end
end