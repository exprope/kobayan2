class CreateJushos < ActiveRecord::Migration
  def change
    create_table :jushos do |t|
      t.references :todofuken, index: true
      t.references :shichoson, index: true
      t.string :sonotajusho

      t.timestamps
    end
  end
end
