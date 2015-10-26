json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date_of_visit, :pet, :customer, :reminder_for_apoointment, :reason_for_visit, :docotr_id, :pet_id
  json.url appointment_url(appointment, format: :json)
end
