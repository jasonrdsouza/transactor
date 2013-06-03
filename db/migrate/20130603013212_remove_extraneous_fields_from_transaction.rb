class RemoveExtraneousFieldsFromTransaction < ActiveRecord::Migration
  def change
    remove_column :transactions, :comment
    remove_column :transactions, :label 
  end
end
