class CreateDaums < ActiveRecord::Migration[5.2]
  def change
    create_table :daums do |t|
      t.string :image
      t.string :title
      t.string :genre
      t.string :author

      t.timestamps
    end
  end
end
