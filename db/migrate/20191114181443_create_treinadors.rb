class CreateTreinadors < ActiveRecord::Migration[5.0]
  def change
    create_table :treinadors do |t|
      t.string :nome
      t.integer :idade
      t.string :sexo
      t.string :especialidade

      t.timestamps
    end
  end
end
