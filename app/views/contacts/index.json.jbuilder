json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :email, :cell
  json.url contact_url(contact, format: :json)
end
