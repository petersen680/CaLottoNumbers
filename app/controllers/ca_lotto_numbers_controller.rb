class CaLottoNumbersController < ApplicationController
  # GET /ca_lotto_numbers
  # GET /ca_lotto_numbers.json
  def index
    @ca_lotto_numbers = CaLottoNumber.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ca_lotto_numbers }
    end
  end

  # GET /ca_lotto_numbers/1
  # GET /ca_lotto_numbers/1.json
  def show
    @ca_lotto_number = CaLottoNumber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ca_lotto_number }
    end
  end

  # GET /ca_lotto_numbers/new
  # GET /ca_lotto_numbers/new.json
  def new
    @ca_lotto_number = CaLottoNumber.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ca_lotto_number }
    end
  end

  # GET /ca_lotto_numbers/1/edit
  def edit
    @ca_lotto_number = CaLottoNumber.find(params[:id])
  end

  # POST /ca_lotto_numbers
  # POST /ca_lotto_numbers.json
  def create
    @ca_lotto_number = CaLottoNumber.new(params[:ca_lotto_number])

    respond_to do |format|
      if @ca_lotto_number.save
        format.html { redirect_to @ca_lotto_number, notice: 'Ca lotto number was successfully created.' }
        format.json { render json: @ca_lotto_number, status: :created, location: @ca_lotto_number }
      else
        format.html { render action: "new" }
        format.json { render json: @ca_lotto_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ca_lotto_numbers/1
  # PUT /ca_lotto_numbers/1.json
  def update
    @ca_lotto_number = CaLottoNumber.find(params[:id])

    respond_to do |format|
      if @ca_lotto_number.update_attributes(params[:ca_lotto_number])
        format.html { redirect_to @ca_lotto_number, notice: 'Ca lotto number was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ca_lotto_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ca_lotto_numbers/1
  # DELETE /ca_lotto_numbers/1.json
  def destroy
    @ca_lotto_number = CaLottoNumber.find(params[:id])
    @ca_lotto_number.destroy

    respond_to do |format|
      format.html { redirect_to ca_lotto_numbers_url }
      format.json { head :no_content }
    end
  end
end
