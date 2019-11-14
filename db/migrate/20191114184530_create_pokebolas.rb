class CreatePokebolas < ActiveRecord::Migration[5.0]
  def change
    create_table :pokebolas do |t|
      t.string :nome
      t.text :caracteristica

      t.timestamps
    end
  end
end
