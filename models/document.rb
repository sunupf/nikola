class Document < ActiveRecord::Base
    has_many :scholarship_documents

    def as_json(option = {})
        {
            id: id,
            name: name
        }
    end
end