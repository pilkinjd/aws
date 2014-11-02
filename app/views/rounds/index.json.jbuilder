json.array!(@rounds) do |round|
  json.extract! round, :id, :name, :description, :arrows, :scoring, :indoor_outdoor, :order_id, :on_card, :official, :group_letter
  json.url round_url(round, format: :json)
end
