require "application_system_test_case"

class SubtasksTest < ApplicationSystemTestCase
  setup do
    @subtask = subtasks(:one)
  end

  test "visiting the index" do
    visit subtasks_url
    assert_selector "h1", text: "Subtasks"
  end

  test "should create subtask" do
    visit subtasks_url
    click_on "New subtask"

    check "Complete status" if @subtask.complete_status
    fill_in "End date", with: @subtask.end_date
    fill_in "Name", with: @subtask.name
    fill_in "Start date", with: @subtask.start_date
    fill_in "Task", with: @subtask.task_id
    click_on "Create Subtask"

    assert_text "Subtask was successfully created"
    click_on "Back"
  end

  test "should update Subtask" do
    visit subtask_url(@subtask)
    click_on "Edit this subtask", match: :first

    check "Complete status" if @subtask.complete_status
    fill_in "End date", with: @subtask.end_date
    fill_in "Name", with: @subtask.name
    fill_in "Start date", with: @subtask.start_date
    fill_in "Task", with: @subtask.task_id
    click_on "Update Subtask"

    assert_text "Subtask was successfully updated"
    click_on "Back"
  end

  test "should destroy Subtask" do
    visit subtask_url(@subtask)
    click_on "Destroy this subtask", match: :first

    assert_text "Subtask was successfully destroyed"
  end
end
