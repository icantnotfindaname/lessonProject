json.extract! report, :id, :address, :severity, :position, :day, :created_at, :updated_at
json.url report_url(report, format: :json)
