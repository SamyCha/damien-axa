class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.integer :initial_loan
      t.integer :fix_amount

      t.timestamps
    end
  end
end
