json.array!(@mock_objects) do |mock_object|
  json.extract! mock_object, :id, :name
  json.url mock_object_url(mock_object, format: :json)
end
