class RemoveCreatedByUserFromArticles < ActiveRecord::Migration[7.1]
  def change
    remove_column :articles, :created_by_user, :string
  end
end
