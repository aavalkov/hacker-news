class EditName < ActiveRecord::Migration
  def change
    rename_column :comments, :links_id, :link_id
  end
end
