require "faker"

Scholarship.destroy_all

100.times do |index|
    Scholarship.create(
        title: "Beasiswa #{Faker::Company.name}",
        tuition: "#{Faker::Number.number(2)}K USD",
        detail: "Disini detailnya banyak banget, harusnya sih text panjang. Didalamnya bisa diisi apa aja terkait beasiswanya, misal detail tujuan, gelar, dll",
        deadline: Faker::Date.forward(23),
        image_thumb: "newton-ristekdikti-master-scholarship-programin-maritime-and-marine-1.jpg",
        image_original: "newton-ristekdikti-master-scholarship-programin-maritime-and-marine-1.jpg",
        scholarship_url: "http://newton-ristekdikti.com/formulir"
    )
end