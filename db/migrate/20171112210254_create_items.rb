class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.boolean :done
      t.references :todo, foreign_key: true

      t.timestamps
    end
  end
end
