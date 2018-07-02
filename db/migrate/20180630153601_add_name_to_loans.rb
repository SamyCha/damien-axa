class AddNameToLoans < ActiveRecord::Migration[5.1]
  def change
    add_column :loans, :firstname, :string
    add_column :loans, :lastname, :string
  end
end
