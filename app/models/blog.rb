class CreateFriendlyIdSlugs < ActiveRecord::Migration[5.1]
  extend FriendlyId
  friendly_id :title, use: :slugged
end
