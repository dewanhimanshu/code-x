class AddQuestionIdToCodes < ActiveRecord::Migration[5.2]
  def change
    add_column :codes, :question_id, :integer
  end
end
