class CreateFormats < ActiveRecord::Migration[7.0]
  def change
    create_table :formats, id: :uuid do |t|
      t.integer :reason, null: false, default: 0
      t.integer :status, null: false, default: 0
      t.boolean :training, null: false, default: false
      t.boolean :job_posting,  null: false, default: false
      t.text :justification
      t.string :employee_name, null: false, default: ''
      t.string :employee_number, null: false, default: ''
      t.date :creation_date
      t.date :termination_date
      t.references :current_position, null: false, type: :uuid
      t.references :new_position, null: false, type: :uuid
      t.references :current_boss, null: false, type: :uuid
      t.references :vacant_boss, null: false, type: :uuid
      t.references :vacant_coordinator, null: false, type: :uuid
      t.string :notify

      t.timestamps
    end

    add_foreign_key :formats, :positions, column: :current_position_id
    add_foreign_key :formats, :positions, column: :new_position_id
    add_foreign_key :formats, :users, column: :current_boss_id
    add_foreign_key :formats, :users, column: :vacant_boss_id
    add_foreign_key :formats, :users, column: :vacant_coordinator_id
  end
end
