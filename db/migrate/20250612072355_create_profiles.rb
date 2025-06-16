class CreateProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :xp
      t.integer :level
      t.string :avatar_url
      t.string :display_name
      t.string :bio

      t.references :user
      
      t.timestamps
    end
  end
end
