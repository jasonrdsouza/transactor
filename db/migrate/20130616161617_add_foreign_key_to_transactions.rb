class AddForeignKeyToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :label_id, :integer
    add_column :transactions, :comment, :string
  end
end
