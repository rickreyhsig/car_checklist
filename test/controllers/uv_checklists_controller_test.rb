require 'test_helper'

class UvChecklistsControllerTest < ActionController::TestCase
  setup do
    @uv_checklist = uv_checklists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uv_checklists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uv_checklist" do
    assert_difference('UvChecklist.count') do
      post :create, uv_checklist: { details: @uv_checklist.details, msi_cpo: @uv_checklist.msi_cpo, msi_cpo_completed_by: @uv_checklist.msi_cpo_completed_by, notes: @uv_checklist.notes, paint_wheels: @uv_checklist.paint_wheels }
    end

    assert_redirected_to uv_checklist_path(assigns(:uv_checklist))
  end

  test "should show uv_checklist" do
    get :show, id: @uv_checklist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uv_checklist
    assert_response :success
  end

  test "should update uv_checklist" do
    patch :update, id: @uv_checklist, uv_checklist: { details: @uv_checklist.details, msi_cpo: @uv_checklist.msi_cpo, msi_cpo_completed_by: @uv_checklist.msi_cpo_completed_by, notes: @uv_checklist.notes, paint_wheels: @uv_checklist.paint_wheels }
    assert_redirected_to uv_checklist_path(assigns(:uv_checklist))
  end

  test "should destroy uv_checklist" do
    assert_difference('UvChecklist.count', -1) do
      delete :destroy, id: @uv_checklist
    end

    assert_redirected_to uv_checklists_path
  end
end
