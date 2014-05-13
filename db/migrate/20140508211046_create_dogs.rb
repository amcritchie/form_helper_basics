class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.integer :number
      t.string :password
      t.date :date_of_birth

      t.timestamps
    end
  end
end
