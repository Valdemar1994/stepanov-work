class CreateSpecialities < ActiveRecord::Migration[7.0]
  def change
    create_table :specialities do |t|
      t.string :name

      t.timestamps
    end

    add_index :specialities, :name

  end
end