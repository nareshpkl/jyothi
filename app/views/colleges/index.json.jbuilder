json.array!(@colleges) do |college|
  json.extract! college, :id, :students, :principal, :staff, :administration
  json.url college_url(college, format: :json)
end
