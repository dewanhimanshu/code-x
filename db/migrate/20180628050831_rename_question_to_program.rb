class RenameQuestionToProgram < ActiveRecord::Migration[5.2]
  def change
  	rename_column :questions, :question, :program

  end
end
