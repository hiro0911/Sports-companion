# jsonによりカレンダー情報表示
json.array!(@events) do |event|
  json.extract! event, :id, :title, :body
  json.start event.start_date
  json.end event.end_date
  json.url user_event_url(event.user_id, event, format: :html)
end
