class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas, id: :uuid do |t|
      t.string :name

      t.timestamps
    end
  end
end
