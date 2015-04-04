class CreateLibraryInfos < ActiveRecord::Migration
  def change
    create_table :library_infos do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
