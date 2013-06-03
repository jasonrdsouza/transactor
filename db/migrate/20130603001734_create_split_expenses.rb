class CreateSplitExpenses < ActiveRecord::Migration
  def change
    create_table :split_expenses do |t|
      t.references :lender
      t.references :debtor
      t.references :label
      t.integer :amount
      t.string :comment
      t.date :ds

      t.timestamps
    end
    add_index :split_expenses, :lender_id
    add_index :split_expenses, :debtor_id
    add_index :split_expenses, :label_id
  end
end
