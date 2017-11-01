require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require_relative './models/country'
require_relative './models/degree'
require_relative './models/document'
require_relative './models/scholarship'
require_relative './models/scholarship_document'
require_relative './models/scholarship_degree'
require_relative './models/scholarship_country'

get '/scholarships' do
    scholarships = Scholarship.new().get_all
    scholarships.to_json()
end

get '/scholarships/:id' do |scholarship_id|
    scholarships = Scholarship.new().get_all
    scholarship = {}
    scholarships.each do |data|
        if data["id"] == scholarship_id.to_i
            return data.to_json
        end
    end

    # scholarship.to_json
end