require 'test_helper'

class NvChecklistsControllerTest < ActionController::TestCase
  setup do
    @nv_checklist = nv_checklists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nv_checklists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nv_checklist" do
    assert_difference('NvChecklist.count') do
      post :create, nv_checklist: { notes: @nv_checklist.notes, pdi: @nv_checklist.pdi, pdi_completed_by: @nv_checklist.pdi_completed_by, ready_to_show: @nv_checklist.ready_to_show, stock_in: @nv_checklist.stock_in }
    end

    assert_redirected_to nv_checklist_path(assigns(:nv_checklist))
  end

  test "should show nv_checklist" do
    get :show, id: @nv_checklist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nv_checklist
    assert_response :success
  end

  test "should update nv_checklist" do
    patch :update, id: @nv_checklist, nv_checklist: { notes: @nv_checklist.notes, pdi: @nv_checklist.pdi, pdi_completed_by: @nv_checklist.pdi_completed_by, ready_to_show: @nv_checklist.ready_to_show, stock_in: @nv_checklist.stock_in }
    assert_redirected_to nv_checklist_path(assigns(:nv_checklist))
  end

  test "should destroy nv_checklist" do
    assert_difference('NvChecklist.count', -1) do
      delete :destroy, id: @nv_checklist
    end

    assert_redirected_to nv_checklists_path
  end
end
