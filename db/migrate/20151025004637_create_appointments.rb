class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :date_of_visit
      t.string :pet_value
      t.string :customer
      t.boolean :reminder_for_apoointment
      t.string :reason_for_visit
      t.integer :doctor_id
      t.integer :pet_id

      t.timestamps
    end
  end
end
