class AddTreinadorIdToPokemon < ActiveRecord::Migration[5.0]
  def change
    add_column :pokemons, :treinador_id, :integer
  end
end
