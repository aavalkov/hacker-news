class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.belongs_to :links

      t.timestamps
    end
  end
end
