class AddTagsToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :like, :integer
    add_column :questions, :tags, :string
  end
end
