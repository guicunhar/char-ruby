require "test_helper"

class CharsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @char = chars(:one)
  end

  test "should get index" do
    get chars_url
    assert_response :success
  end

  test "should get new" do
    get new_char_url
    assert_response :success
  end

  test "should create char" do
    assert_difference("Char.count") do
      post chars_url, params: { char: { cha: @char.cha, con: @char.con, dex: @char.dex, int: @char.int, lvl: @char.lvl, name: @char.name, prof_bonus: @char.prof_bonus, skill_id: @char.skill_id, str: @char.str, wis: @char.wis } }
    end

    assert_redirected_to char_url(Char.last)
  end

  test "should show char" do
    get char_url(@char)
    assert_response :success
  end

  test "should get edit" do
    get edit_char_url(@char)
    assert_response :success
  end

  test "should update char" do
    patch char_url(@char), params: { char: { cha: @char.cha, con: @char.con, dex: @char.dex, int: @char.int, lvl: @char.lvl, name: @char.name, prof_bonus: @char.prof_bonus, skill_id: @char.skill_id, str: @char.str, wis: @char.wis } }
    assert_redirected_to char_url(@char)
  end

  test "should destroy char" do
    assert_difference("Char.count", -1) do
      delete char_url(@char)
    end

    assert_redirected_to chars_url
  end
end
