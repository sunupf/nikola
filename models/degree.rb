class Degree < ActiveRecord::Base
    has_many :scholarship_degrees

    def as_json(option = {})
        {
            id: id,
            name: name,
            alias: self.alias
        }
    end
end