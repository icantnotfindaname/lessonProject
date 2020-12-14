class CreatePits < ActiveRecord::Migration[6.0]
  def change
    create_table :pits do |t|
      t.string :position
      t.string :size
      t.string :pid
      t.string :pnum
      t.string :state
      t.string :time
      t.string :usage
      t.string :cost

      t.timestamps
    end
  end
end
