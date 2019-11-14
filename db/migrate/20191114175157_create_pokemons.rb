class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :nome
      t.string :tipo
      t.string :raridade
      t.string :treinador
      t.string :fraqueza
      t.string :habilidade

      t.timestamps
    end
  end
end
