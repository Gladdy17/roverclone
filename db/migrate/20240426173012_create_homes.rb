class CreateHomes < ActiveRecord::Migration[7.1]
  def change
    create_table :homes do |t|
      t.boolean :homesitting, default: false
      t.boolean :housesitting, default: false
      t.boolean :dvisits, default: false
      t.date :dob
      t.date :edod
      t.string :animal_type
      t.integer :costmaxmin
      t.boolean :scales, default: false
      t.boolean :yard, default: false
      t.boolean :no_dog, default: false
      t.boolean :no_cat, default: false
      t.boolean :one_client, default: false
      t.boolean :non_neutered_dogs, default: false
      t.integer :service, default: 0

      t.timestamps
    end
  end
end
