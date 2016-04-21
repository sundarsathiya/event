class CreateEventdates < ActiveRecord::Migration
  def change
    create_table :eventdates do |t|
      t.string :title
      t.date :start
      t.date :end

      t.timestamps null: false
    end
  end
end
