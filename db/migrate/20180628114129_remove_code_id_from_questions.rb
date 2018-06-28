class RemoveCodeIdFromQuestions < ActiveRecord::Migration[5.2]
  def change
  	remove_column :questions, :code_id

  end
end
