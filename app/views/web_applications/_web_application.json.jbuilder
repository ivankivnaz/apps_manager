json.extract! web_application, :id, :name, :url, :path, :created_at, :updated_at
json.url web_application_url(web_application, format: :json)
