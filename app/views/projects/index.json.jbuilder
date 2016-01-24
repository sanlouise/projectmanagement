json.array!(@projects) do |project|
  json.extract! project, :id, :title, :details, :deadline, :tenant_id
  json.url project_url(project, format: :json)
end
