class AlterVote < ActiveRecord::Migration
  def change
    rename_column :votes, :links_id, :link_id
  end
end
