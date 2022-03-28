class CreateMediums < ActiveRecord::Migration[6.1]
  def change
    create_table :mediums do |t|
    t.string :title
    t.text :description
    t.timestamps
    end
  end
end
