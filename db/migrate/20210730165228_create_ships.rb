class CreateShips < ActiveRecord::Migration[6.1]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :origin
      t.bigint :passengers_count
      t.integer :status

      t.timestamps
    end
  end
end
