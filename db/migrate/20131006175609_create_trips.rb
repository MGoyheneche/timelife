class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title
      t.string :subtitle
      t.string :cover
      t.references :user, index: true

      t.timestamps
    end
  end
end
