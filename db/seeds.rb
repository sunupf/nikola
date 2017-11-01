require "faker"

Scholarship.destroy_all
Document.destroy_all
Degree.destroy_all
Country.destroy_all
ScholarshipDocument.destroy_all
ScholarshipDegree.destroy_all
ScholarshipCountry.destroy_all

puts "All table has been truncated"

40.times do |index|
    Country.create(
        name: "#{Faker::Address.unique.country}",
        region: "#{Faker::Address.time_zone().split("/").first}"
    )
end

puts "Country Inserted"

Document.create(name: "Scan KTP")
Document.create(name: "Sertifikat IELTS dengan skor minimal 6.5")
Document.create(name: "Letter of Acceptance (LOA) asli dari universitas tujuan")
Document.create(name: "Surat pernyataan tidak menerima beasiswa lain")
Document.create(name: "Surat pernyataan akan melaksanakan ikatan dinas")
Document.create(name: "Scan Ijazah S1 (asli)")
Document.create(name: "Scan Ijazah S2 (asli)")
Document.create(name: "Transkrip Nilai S1")
Document.create(name: "Transkrip Nilai S2")
Document.create(name: "Naskah proposal penelitian")

puts "Document Inserted"

Degree.create(name: "Sarjana", alias:"S1")
Degree.create(name: "Master", alias:"S2")
Degree.create(name: "Doktor", alias:"S3")

puts "Degree Inserted"

100.times do |index|
    scholarship = Scholarship.create(
        title: "Beasiswa #{Faker::Company.name}",
        tuition: "#{Faker::Number.number(2)}K USD",
        detail: "Disini detailnya banyak banget, harusnya sih text panjang. Didalamnya bisa diisi apa aja terkait beasiswanya, misal detail tujuan, gelar, dll",
        deadline: Faker::Date.forward(23),
        image_thumb: "newton-ristekdikti-master-scholarship-programin-maritime-and-marine-1.jpg",
        image_original: "newton-ristekdikti-master-scholarship-programin-maritime-and-marine-1.jpg",
        scholarship_url: "http://newton-ristekdikti.com/formulir"
    )

    Document.all().each do |document|
        ScholarshipDocument.create(
            scholarship_id: scholarship["id"],
            document_id: document["id"]
        )
    end

    degree_count = [1,2,3].sample
    choosen_degrees = []
    degree_count.times do
        degree_id = Degree.all.sample.id
        if(!choosen_degrees.include? degree_id)
            choosen_degrees.push degree_id
            ScholarshipDegree.create(
                scholarship_id: scholarship["id"],
                degree_id: degree_id
            )
        end
    end

    ScholarshipCountry.create(
        scholarship_id: scholarship["id"],
        country_id: Country.all.sample.id
    )
    puts "Scholarships #{index} Inserted"
end

