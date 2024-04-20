class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.date :date_of_birth
      t.text :bio
      t.string :reference
      t.string :address
      t.string :postal_code

      t.timestamps
    end
  end
end
