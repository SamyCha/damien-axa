class CreateMortages < ActiveRecord::Migration[5.1]
  def change
    create_table :mortages do |t|
      t.string :firstname
      t.string :lastname
      t.integer :amount
      t.integer :rate
      t.string :referer

      t.timestamps
    end
  end
end
