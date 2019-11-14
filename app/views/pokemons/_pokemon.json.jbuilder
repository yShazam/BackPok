json.extract! pokemon, :id, :nome, :tipo, :raridade, :treinador, :fraqueza, :habilidade, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
