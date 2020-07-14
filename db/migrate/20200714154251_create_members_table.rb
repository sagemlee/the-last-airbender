class CreateMembersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :allies
      t.string :enemies
      t.string :affiliation
      t.string :photo_url
      t.timestamps
    end
  end
end
