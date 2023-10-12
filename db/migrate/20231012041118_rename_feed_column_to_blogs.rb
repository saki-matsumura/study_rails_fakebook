class RenameFeedColumnToBlogs < ActiveRecord::Migration[6.1]
  def change
    rename_column :blogs, :feed, :image
  end
end
