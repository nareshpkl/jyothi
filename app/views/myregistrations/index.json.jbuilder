json.array!(@myregistrations) do |myregistration|
  json.extract! myregistration, :id, :name, :email, :cell, :gender, :category, :subject
  json.url myregistration_url(myregistration, format: :json)
end
