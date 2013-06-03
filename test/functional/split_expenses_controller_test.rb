require 'test_helper'

class SplitExpensesControllerTest < ActionController::TestCase
  setup do
    @split_expense = split_expenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:split_expenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create split_expense" do
    assert_difference('SplitExpense.count') do
      post :create, split_expense: { amount: @split_expense.amount, comment: @split_expense.comment, ds: @split_expense.ds }
    end

    assert_redirected_to split_expense_path(assigns(:split_expense))
  end

  test "should show split_expense" do
    get :show, id: @split_expense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @split_expense
    assert_response :success
  end

  test "should update split_expense" do
    put :update, id: @split_expense, split_expense: { amount: @split_expense.amount, comment: @split_expense.comment, ds: @split_expense.ds }
    assert_redirected_to split_expense_path(assigns(:split_expense))
  end

  test "should destroy split_expense" do
    assert_difference('SplitExpense.count', -1) do
      delete :destroy, id: @split_expense
    end

    assert_redirected_to split_expenses_path
  end
end
