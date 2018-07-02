class AddRefereToLoans < ActiveRecord::Migration[5.1]
  def change
    add_column :loans, :refere, :string
  end
end
