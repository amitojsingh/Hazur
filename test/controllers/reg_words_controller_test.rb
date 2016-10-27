require 'test_helper'

class RegWordsControllerTest < ActionController::TestCase
  setup do
    @reg_word = reg_words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reg_words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reg_word" do
    assert_difference('RegWord.count') do
      post :create, reg_word: { words: @reg_word.words }
    end

    assert_redirected_to reg_word_path(assigns(:reg_word))
  end

  test "should show reg_word" do
    get :show, id: @reg_word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reg_word
    assert_response :success
  end

  test "should update reg_word" do
    patch :update, id: @reg_word, reg_word: { words: @reg_word.words }
    assert_redirected_to reg_word_path(assigns(:reg_word))
  end

  test "should destroy reg_word" do
    assert_difference('RegWord.count', -1) do
      delete :destroy, id: @reg_word
    end

    assert_redirected_to reg_words_path
  end
end
