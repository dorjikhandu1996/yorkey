require "application_system_test_case"

class DistypesTest < ApplicationSystemTestCase
  setup do
    @distype = distypes(:one)
  end

  test "visiting the index" do
    visit distypes_url
    assert_selector "h1", text: "Distypes"
  end

  test "creating a Distype" do
    visit distypes_url
    click_on "New Distype"

    fill_in "Discount amount", with: @distype.discount_amount
    fill_in "Discount name", with: @distype.discount_name
    fill_in "End", with: @distype.end
    fill_in "Product", with: @distype.product_id
    fill_in "Start", with: @distype.start
    fill_in "Unit", with: @distype.unit
    click_on "Create Distype"

    assert_text "Distype was successfully created"
    click_on "Back"
  end

  test "updating a Distype" do
    visit distypes_url
    click_on "Edit", match: :first

    fill_in "Discount amount", with: @distype.discount_amount
    fill_in "Discount name", with: @distype.discount_name
    fill_in "End", with: @distype.end
    fill_in "Product", with: @distype.product_id
    fill_in "Start", with: @distype.start
    fill_in "Unit", with: @distype.unit
    click_on "Update Distype"

    assert_text "Distype was successfully updated"
    click_on "Back"
  end

  test "destroying a Distype" do
    visit distypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Distype was successfully destroyed"
  end
end
