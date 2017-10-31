class SeedScholarships < ActiveRecord::Migration[5.1]
   def self.up
    Scholarship.create(
        title: "Beasiswa LPDP",
        tuition: "50K USD",
        detail: "Disini detailnya banyak banget, harusnya sih text panjang. Didalamnya bisa diisi apa aja terkait beasiswanya, misal detail tujuan, gelar, dll",
        deadline: "2017-12-15",
        image_thumb: "newton-ristekdikti-master-scholarship-programin-maritime-and-marine-1.jpg",
        image_original: "newton-ristekdikti-master-scholarship-programin-maritime-and-marine-1.jpg",
        scholarship_url: "http://newton-ristekdikti.com/formulir"
    )
  end

  def self.down
    drop_table :scholarships
  end
end
