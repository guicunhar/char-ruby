require "application_system_test_case"

class CharsTest < ApplicationSystemTestCase
  setup do
    @char = chars(:one)
  end

  test "visiting the index" do
    visit chars_url
    assert_selector "h1", text: "Chars"
  end

  test "should create char" do
    visit chars_url
    click_on "New char"

    fill_in "Cha", with: @char.cha
    fill_in "Con", with: @char.con
    fill_in "Dex", with: @char.dex
    fill_in "Int", with: @char.int
    fill_in "Lvl", with: @char.lvl
    fill_in "Name", with: @char.name
    fill_in "Prof bonus", with: @char.prof_bonus
    fill_in "Skill", with: @char.skill_id
    fill_in "Str", with: @char.str
    fill_in "Wis", with: @char.wis
    click_on "Create Char"

    assert_text "Char was successfully created"
    click_on "Back"
  end

  test "should update Char" do
    visit char_url(@char)
    click_on "Edit this char", match: :first

    fill_in "Cha", with: @char.cha
    fill_in "Con", with: @char.con
    fill_in "Dex", with: @char.dex
    fill_in "Int", with: @char.int
    fill_in "Lvl", with: @char.lvl
    fill_in "Name", with: @char.name
    fill_in "Prof bonus", with: @char.prof_bonus
    fill_in "Skill", with: @char.skill_id
    fill_in "Str", with: @char.str
    fill_in "Wis", with: @char.wis
    click_on "Update Char"

    assert_text "Char was successfully updated"
    click_on "Back"
  end

  test "should destroy Char" do
    visit char_url(@char)
    click_on "Destroy this char", match: :first

    assert_text "Char was successfully destroyed"
  end
end
