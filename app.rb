require 'sinatra'
require 'json'

get '/scholarships' do
    scholarships = [
        {
            "id":1,
            "title":"Beasiswa Dikti",
            "degre":[
                "Sarjana",
                "Master"
            ],
            "destination":[
                "Inggris",
                "Jerman"
            ],
            "tuition":"50K USD",
            "is_reminder":true
        }
    ]
    scholarships.to_json()
end

get '/scholarships/:id' do |scholarship_id|
    scholarships = [
        {
            "id":1,
            "title":"Beasiswa Dikti",
            "degre":[
                "Sarjana",
                "Master"
            ],
            "destination":[
                "Inggris",
                "Jerman"
            ],
            "tuition":"50K USD",
            "is_reminder":true
        },
        {
            "id":2,
            "title":"Beasiswa Dikti",
            "degre":[
                "Sarjana",
                "Master"
            ],
            "destination":[
                "Inggris",
                "Jerman"
            ],
            "tuition":"50K USD",
            "is_reminder":true
        }
    ]

    scholarship = {}
    scholarships.each do |data|
        if data[:id] == scholarship_id.to_i
            return data.to_json
        end
    end

    # scholarship.to_json
end