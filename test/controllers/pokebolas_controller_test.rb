require 'test_helper'

class PokebolasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokebola = pokebolas(:one)
  end

  test "should get index" do
    get pokebolas_url
    assert_response :success
  end

  test "should get new" do
    get new_pokebola_url
    assert_response :success
  end

  test "should create pokebola" do
    assert_difference('Pokebola.count') do
      post pokebolas_url, params: { pokebola: { caracteristica: @pokebola.caracteristica, nome: @pokebola.nome } }
    end

    assert_redirected_to pokebola_url(Pokebola.last)
  end

  test "should show pokebola" do
    get pokebola_url(@pokebola)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokebola_url(@pokebola)
    assert_response :success
  end

  test "should update pokebola" do
    patch pokebola_url(@pokebola), params: { pokebola: { caracteristica: @pokebola.caracteristica, nome: @pokebola.nome } }
    assert_redirected_to pokebola_url(@pokebola)
  end

  test "should destroy pokebola" do
    assert_difference('Pokebola.count', -1) do
      delete pokebola_url(@pokebola)
    end

    assert_redirected_to pokebolas_url
  end
end
