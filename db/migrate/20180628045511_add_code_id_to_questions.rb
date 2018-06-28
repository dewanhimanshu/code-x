class AddCodeIdToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :code_id, :integer
  end
end
