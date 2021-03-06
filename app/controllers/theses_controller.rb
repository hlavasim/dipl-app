class ThesesController < ApplicationController
  before_action :set_thesis, only: [:show, :edit, :update, :destroy]

  # GET /theses
  # GET /theses.json
  def index
    @theses = Thesis.all
  end

  # GET /theses/1
  # GET /theses/1.json
  def show
  end

  # GET /theses/new
  def new
    @thesis = Thesis.new
<<<<<<< HEAD
    #form_author = Author.new
=======
    @thesis.author = Author.new
>>>>>>> d92e416f4c628a4e59c9d2530f4e8204f474694b
  end

  # GET /theses/1/edit
  def edit
    form_author = @thesis.author
  end

  # POST /theses
  # POST /theses.json
  def create
    author = Author.new(author_params)
    @thesis = Thesis.new(thesis_params)
    @thesis.author = author

    respond_to do |format|
      if @thesis.save
        format.html { redirect_to @thesis, notice: 'Thesis was successfully created.' }
        format.json { render :show, status: :created, location: @thesis }
      else
        format.html { render :new }
        format.json { render json: @thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theses/1
  # PATCH/PUT /theses/1.json
  def update
    respond_to do |format|
      if @thesis.update(thesis_params)
        format.html { redirect_to @thesis, notice: 'Thesis was successfully updated.' }
        format.json { render :show, status: :ok, location: @thesis }
      else
        format.html { render :edit }
        format.json { render json: @thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theses/1
  # DELETE /theses/1.json
  def destroy
    @thesis.destroy
    respond_to do |format|
      format.html { redirect_to theses_url, notice: 'Thesis was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thesis
      @thesis = Thesis.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thesis_params
      params.require(:thesis).permit(:name, :abstract, :language, 
        :defended, :faculty_id, :author_attributes => [:firstname, :surname])
    end

    def author_params
      params.require(:thesis).require(:form_author).permit(:firstname, :surname)
    end
end
