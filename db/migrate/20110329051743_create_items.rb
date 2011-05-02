class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.string :itemtype
      t.string :industry
      t.string :email
      t.string :contact_name
      t.string :address
      t.string :phone_number
      t.string :secondary_number
      t.string :secondary_number
      t.string :facebook
      t.string :twitter
      t.text :url
      t.text :photo_url
      t.text :description
      t.integer :rating
      t.integer :position
      t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
