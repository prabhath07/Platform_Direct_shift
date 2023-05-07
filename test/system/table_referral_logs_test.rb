require "application_system_test_case"

class TableReferralLogsTest < ApplicationSystemTestCase
  setup do
    @table_referral_log = table_referral_logs(:one)
  end

  test "visiting the index" do
    visit table_referral_logs_url
    assert_selector "h1", text: "Table referral logs"
  end

  test "should create table referral log" do
    visit table_referral_logs_url
    click_on "New table referral log"

    click_on "Create Table referral log"

    assert_text "Table referral log was successfully created"
    click_on "Back"
  end

  test "should update Table referral log" do
    visit table_referral_log_url(@table_referral_log)
    click_on "Edit this table referral log", match: :first

    click_on "Update Table referral log"

    assert_text "Table referral log was successfully updated"
    click_on "Back"
  end

  test "should destroy Table referral log" do
    visit table_referral_log_url(@table_referral_log)
    click_on "Destroy this table referral log", match: :first

    assert_text "Table referral log was successfully destroyed"
  end
end
