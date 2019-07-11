class CreatePokemonTrackers < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon_trackers do |t|
      t.string :species
      t.string :type

      t.timestamps
    end
  end
end
