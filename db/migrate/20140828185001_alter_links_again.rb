class AlterLinksAgain < ActiveRecord::Migration
  def change
    remove_column :links, :vote, :interger

    create_table :votes do |t|
      t.belongs_to :links

      t.timestamps
    end
  end
end
