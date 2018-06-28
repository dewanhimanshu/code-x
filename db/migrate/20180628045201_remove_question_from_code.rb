class RemoveQuestionFromCode < ActiveRecord::Migration[5.2]
  def change
    remove_column :codes, :question, :text
  end
end
