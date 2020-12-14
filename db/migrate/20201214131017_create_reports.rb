class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :address
      t.string :severity
      t.string :position
      t.date :day

      t.timestamps
    end
  end
end
