class CreateTodofukens < ActiveRecord::Migration
  def change
    create_table :todofukens do |t|
      t.string :name

      t.timestamps
    end
  end
end
