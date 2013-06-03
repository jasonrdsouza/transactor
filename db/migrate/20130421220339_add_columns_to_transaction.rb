class AddColumnsToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :lender_id, :integer
    add_column :transactions, :debtor_id, :integer
  end
end
