class LinkPostedByUser < ActiveRecord::Migration[5.1]
  def change
    add_column :links, :user, :object
  end
end
