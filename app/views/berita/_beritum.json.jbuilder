json.extract! beritum, :id, :judul, :isi, :kategori, :slug, :created_at, :updated_at
json.url beritum_url(beritum, format: :json)