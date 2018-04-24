class CommentHasForOneLinkAndOneUser < ActiveRecord::Migration[5.1]
  def change
    add_column :link_comments, :link, :object
    add_column :link_comments, :user, :object
  end
end
