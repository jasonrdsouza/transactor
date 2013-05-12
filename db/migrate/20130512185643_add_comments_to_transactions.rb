class AddCommentsToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :comment, :string
  end
end
