class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :cost

      t.timestamps
    end
  end
end
