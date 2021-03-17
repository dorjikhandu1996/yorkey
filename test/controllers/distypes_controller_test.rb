require "test_helper"

class DistypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distype = distypes(:one)
  end

  test "should get index" do
    get distypes_url
    assert_response :success
  end

  test "should get new" do
    get new_distype_url
    assert_response :success
  end

  test "should create distype" do
    assert_difference('Distype.count') do
      post distypes_url, params: { distype: { discount_amount: @distype.discount_amount, discount_name: @distype.discount_name, end: @distype.end, product_id: @distype.product_id, start: @distype.start, unit: @distype.unit } }
    end

    assert_redirected_to distype_url(Distype.last)
  end

  test "should show distype" do
    get distype_url(@distype)
    assert_response :success
  end

  test "should get edit" do
    get edit_distype_url(@distype)
    assert_response :success
  end

  test "should update distype" do
    patch distype_url(@distype), params: { distype: { discount_amount: @distype.discount_amount, discount_name: @distype.discount_name, end: @distype.end, product_id: @distype.product_id, start: @distype.start, unit: @distype.unit } }
    assert_redirected_to distype_url(@distype)
  end

  test "should destroy distype" do
    assert_difference('Distype.count', -1) do
      delete distype_url(@distype)
    end

    assert_redirected_to distypes_url
  end
end
