class AddCreatedByUserToArticle < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :created_by_user, :string
  end
end
