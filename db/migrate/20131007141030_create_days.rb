class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :city
      t.string :country
      t.date :date
      t.string :title
      t.text :description
      t.references :trip, index: true

      t.timestamps
    end
  end
end
