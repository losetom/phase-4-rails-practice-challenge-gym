class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :client_id
      t.integer :age

      t.timestamps
    end
  end
end
