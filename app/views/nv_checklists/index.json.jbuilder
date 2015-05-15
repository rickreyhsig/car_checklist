json.array!(@nv_checklists) do |nv_checklist|
  json.extract! nv_checklist, :id, :stock_in, :pdi, :pdi_completed_by, :notes, :ready_to_show
  json.url nv_checklist_url(nv_checklist, format: :json)
end
