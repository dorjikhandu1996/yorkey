require "application_system_test_case"

class DiscountsTest < ApplicationSystemTestCase
  setup do
    @discount = discounts(:one)
  end

  test "visiting the index" do
    visit discounts_url
    assert_selector "h1", text: "Discounts"
  end

  test "creating a Discount" do
    visit discounts_url
    click_on "New Discount"

    fill_in "Discount amount", with: @discount.discount_amount
    fill_in "Discount name", with: @discount.discount_name
    fill_in "Discount percent", with: @discount.discount_percent
    fill_in "End", with: @discount.end
    fill_in "Product", with: @discount.product_id
    fill_in "Start", with: @discount.start
    click_on "Create Discount"

    assert_text "Discount was successfully created"
    click_on "Back"
  end

  test "updating a Discount" do
    visit discounts_url
    click_on "Edit", match: :first

    fill_in "Discount amount", with: @discount.discount_amount
    fill_in "Discount name", with: @discount.discount_name
    fill_in "Discount percent", with: @discount.discount_percent
    fill_in "End", with: @discount.end
    fill_in "Product", with: @discount.product_id
    fill_in "Start", with: @discount.start
    click_on "Update Discount"

    assert_text "Discount was successfully updated"
    click_on "Back"
  end

  test "destroying a Discount" do
    visit discounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Discount was successfully destroyed"
  end
end
