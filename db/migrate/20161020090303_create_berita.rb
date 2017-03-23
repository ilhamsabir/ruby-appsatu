class CreateBerita < ActiveRecord::Migration[5.0]
  def change
    create_table :berita do |t|
      t.string :judul
      t.string :isi
      t.string :kategori
      t.string :slug

      t.timestamps
    end
    add_index :berita, :slug, unique: true
  end
end
