class AddDateToLoans < ActiveRecord::Migration[5.1]
  def change
    add_column :loans, :date, :datetime
  end
end
