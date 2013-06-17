class DropSplitExpenses < ActiveRecord::Migration
  def change
    drop_table :split_expenses
  end
end
