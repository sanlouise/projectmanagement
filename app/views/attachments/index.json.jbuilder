json.array!(@attachments) do |attachment|
  json.extract! attachment, :id, :name, :key, :project_id
  json.url attachment_url(attachment, format: :json)
end
