require 'test_helper'

class PitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pit = pits(:one)
  end

  test "should get index" do
    get pits_url
    assert_response :success
  end

  test "should get new" do
    get new_pit_url
    assert_response :success
  end

  test "should create pit" do
    assert_difference('Pit.count') do
      post pits_url, params: { pit: { cost: @pit.cost, pid: @pit.pid, pnum: @pit.pnum, position: @pit.position, size: @pit.size, state: @pit.state, time: @pit.time, usage: @pit.usage } }
    end

    assert_redirected_to pit_url(Pit.last)
  end

  test "should show pit" do
    get pit_url(@pit)
    assert_response :success
  end

  test "should get edit" do
    get edit_pit_url(@pit)
    assert_response :success
  end

  test "should update pit" do
    patch pit_url(@pit), params: { pit: { cost: @pit.cost, pid: @pit.pid, pnum: @pit.pnum, position: @pit.position, size: @pit.size, state: @pit.state, time: @pit.time, usage: @pit.usage } }
    assert_redirected_to pit_url(@pit)
  end

  test "should destroy pit" do
    assert_difference('Pit.count', -1) do
      delete pit_url(@pit)
    end

    assert_redirected_to pits_url
  end
end
