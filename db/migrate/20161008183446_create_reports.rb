class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string      :title, :null => false
      t.string      :description, :null => false
      t.string      :image
      t.integer     :lat
      t.integer     :long
      t.belongs_to  :school

      t.timestamps
    end
  end
end
