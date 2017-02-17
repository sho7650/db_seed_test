class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.date :birthdate
      t.string :phone

      t.timestamps null: false
    end
  end
end
