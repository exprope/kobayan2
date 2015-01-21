class CreateShichosons < ActiveRecord::Migration
  def change
    create_table :shichosons do |t|
      t.references :todofuken, index: true
      t.string :name

      t.timestamps
    end
  end
end
