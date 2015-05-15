json.array!(@uv_checklists) do |uv_checklist|
  json.extract! uv_checklist, :id, :msi_cpo, :msi_cpo_completed_by, :notes, :paint_wheels, :details
  json.url uv_checklist_url(uv_checklist, format: :json)
end
