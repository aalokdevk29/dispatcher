class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.text :log_data
      t.belongs_to :ship, index: true
      t.timestamps
    end
  end
end
