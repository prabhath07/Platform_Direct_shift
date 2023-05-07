require "test_helper"

class TableReferralLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @table_referral_log = table_referral_logs(:one)
  end

  test "should get index" do
    get table_referral_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_table_referral_log_url
    assert_response :success
  end

  test "should create table_referral_log" do
    assert_difference("TableReferralLog.count") do
      post table_referral_logs_url, params: { table_referral_log: {  } }
    end

    assert_redirected_to table_referral_log_url(TableReferralLog.last)
  end

  test "should show table_referral_log" do
    get table_referral_log_url(@table_referral_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_table_referral_log_url(@table_referral_log)
    assert_response :success
  end

  test "should update table_referral_log" do
    patch table_referral_log_url(@table_referral_log), params: { table_referral_log: {  } }
    assert_redirected_to table_referral_log_url(@table_referral_log)
  end

  test "should destroy table_referral_log" do
    assert_difference("TableReferralLog.count", -1) do
      delete table_referral_log_url(@table_referral_log)
    end

    assert_redirected_to table_referral_logs_url
  end
end
