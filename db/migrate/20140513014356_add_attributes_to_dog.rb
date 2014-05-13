class AddAttributesToDog < ActiveRecord::Migration
  def change
    add_column  :dogs, :adopted, :boolean
    add_column :dogs, :breeder, :boolean
    add_column :dogs, :breed, :string
  end
end
