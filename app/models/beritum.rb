class Beritum < ApplicationRecord
  extend FriendlyId
     friendly_id :judul, use: :slugged
end
