class CharsController < ApplicationController
  before_action :set_char, only: %i[ show edit update destroy ]

  # GET /chars or /chars.json
  def index
    @chars = Char.all
  end

  # GET /chars/1 or /chars/1.json
  def show
  end

  # GET /chars/new
  def new
    @char = Char.new
  end

  # GET /chars/1/edit
  def edit
  end

  # POST /chars or /chars.json
  def create
    @char = Char.new(char_params)

    respond_to do |format|
      if @char.save
        format.html { redirect_to @char, notice: "Char was successfully created." }
        format.json { render :show, status: :created, location: @char }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @char.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chars/1 or /chars/1.json
  def update
    respond_to do |format|
      if @char.update(char_params)
        format.html { redirect_to @char, notice: "Char was successfully updated." }
        format.json { render :show, status: :ok, location: @char }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @char.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chars/1 or /chars/1.json
  def destroy
    @char.destroy!

    respond_to do |format|
      format.html { redirect_to chars_path, status: :see_other, notice: "Char was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_char
      @char = Char.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def char_params
      params.expect(char: [ :name, :str, :dex, :con, :int, :wis, :cha, :lvl, :prof_bonus, :skill_id ])
    end
end
