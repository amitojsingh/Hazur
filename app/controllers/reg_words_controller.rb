class RegWordsController < ApplicationController
  before_action :set_reg_word, only: [:show, :edit, :update, :destroy]

  # GET /reg_words
  # GET /reg_words.json
  def index
    @reg_words = RegWord.all
  end

  # GET /reg_words/1
  # GET /reg_words/1.json
  def show
  end

  # GET /reg_words/new
  def new
    @reg_word = RegWord.new
  end

  # GET /reg_words/1/edit
  def edit
  end

  # POST /reg_words
  # POST /reg_words.json
  def create
    @reg_word = RegWord.new(reg_word_params)

    respond_to do |format|
      if @reg_word.save
        format.html { redirect_to @reg_word, notice: 'Reg word was successfully created.' }
        format.json { render :show, status: :created, location: @reg_word }
      else
        format.html { render :new }
        format.json { render json: @reg_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reg_words/1
  # PATCH/PUT /reg_words/1.json
  def update
    respond_to do |format|
      if @reg_word.update(reg_word_params)
        format.html { redirect_to @reg_word, notice: 'Reg word was successfully updated.' }
        format.json { render :show, status: :ok, location: @reg_word }
      else
        format.html { render :edit }
        format.json { render json: @reg_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reg_words/1
  # DELETE /reg_words/1.json
  def destroy
    @reg_word.destroy
    respond_to do |format|
      format.html { redirect_to reg_words_url, notice: 'Reg word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reg_word
      @reg_word = RegWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reg_word_params
      params.require(:reg_word).permit(:words)
    end
end
