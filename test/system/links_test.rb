require "application_system_test_case"

class LinksTest < ApplicationSystemTestCase
  setup do
    @link = links(:one)
  end

  test "visiting the index" do
    visit links_url
    assert_selector "h1", text: "Links"
  end

  test "should create link" do
    visit links_url
    click_on "New link"

    fill_in "Expires at", with: @link.expires_at
    fill_in "Large url", with: @link.large_url
    fill_in "Name", with: @link.name
    fill_in "Password link access", with: @link.password_link_access
    fill_in "Slug", with: @link.slug
    fill_in "Type", with: @link.type
    check "Visited" if @link.visited
    click_on "Create Link"

    assert_text "Link was successfully created"
    click_on "Back"
  end

  test "should update Link" do
    visit link_url(@link)
    click_on "Edit this link", match: :first

    fill_in "Expires at", with: @link.expires_at
    fill_in "Large url", with: @link.large_url
    fill_in "Name", with: @link.name
    fill_in "Password link access", with: @link.password_link_access
    fill_in "Slug", with: @link.slug
    fill_in "Type", with: @link.type
    check "Visited" if @link.visited
    click_on "Update Link"

    assert_text "Link was successfully updated"
    click_on "Back"
  end

  test "should destroy Link" do
    visit link_url(@link)
    click_on "Destroy this link", match: :first

    assert_text "Link was successfully destroyed"
  end
end
