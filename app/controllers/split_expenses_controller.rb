class SplitExpensesController < ApplicationController
  # GET /split_expenses
  # GET /split_expenses.json
  def index
    @split_expenses = SplitExpense.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @split_expenses }
    end
  end

  # GET /split_expenses/1
  # GET /split_expenses/1.json
  def show
    @split_expense = SplitExpense.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @split_expense }
    end
  end

  # GET /split_expenses/new
  # GET /split_expenses/new.json
  def new
    @split_expense = SplitExpense.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @split_expense }
    end
  end

  # GET /split_expenses/1/edit
  def edit
    @split_expense = SplitExpense.find(params[:id])
  end

  # POST /split_expenses
  # POST /split_expenses.json
  def create
    @split_expense = SplitExpense.new(params[:split_expense])

    respond_to do |format|
      if @split_expense.save
        format.html { redirect_to @split_expense, notice: 'Split expense was successfully created.' }
        format.json { render json: @split_expense, status: :created, location: @split_expense }
      else
        format.html { render action: "new" }
        format.json { render json: @split_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /split_expenses/1
  # PUT /split_expenses/1.json
  def update
    @split_expense = SplitExpense.find(params[:id])

    respond_to do |format|
      if @split_expense.update_attributes(params[:split_expense])
        format.html { redirect_to @split_expense, notice: 'Split expense was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @split_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /split_expenses/1
  # DELETE /split_expenses/1.json
  def destroy
    @split_expense = SplitExpense.find(params[:id])
    @split_expense.destroy

    respond_to do |format|
      format.html { redirect_to split_expenses_url }
      format.json { head :no_content }
    end
  end
end
