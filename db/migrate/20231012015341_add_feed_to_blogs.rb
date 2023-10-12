class AddFeedToBlogs < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :feed, :text, after: :content
  end
end
