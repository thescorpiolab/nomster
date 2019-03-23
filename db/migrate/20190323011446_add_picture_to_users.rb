class AddPictureToUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :photo do |t|
      t.text :caption
      t.integer :place_id
    end

    add_column :users, :picture, :string
  end
end
