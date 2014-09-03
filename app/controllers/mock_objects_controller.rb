class MockObjectsController < ApplicationController
  before_action :set_mock_object, only: [:show, :edit, :update, :destroy]

  # GET /mock_objects
  # GET /mock_objects.json
  def index
    @mock_objects = MockObject.all
  end

  # GET /mock_objects/1
  # GET /mock_objects/1.json
  def show
  end

  # GET /mock_objects/new
  def new
    @mock_object = MockObject.new
  end

  # GET /mock_objects/1/edit
  def edit
  end

  # POST /mock_objects
  # POST /mock_objects.json
  def create
    @mock_object = MockObject.new(mock_object_params)

    respond_to do |format|
      if @mock_object.save
        format.html { redirect_to @mock_object, notice: 'Mock object was successfully created.' }
        format.json { render :show, status: :created, location: @mock_object }
      else
        format.html { render :new }
        format.json { render json: @mock_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mock_objects/1
  # PATCH/PUT /mock_objects/1.json
  def update
    respond_to do |format|
      if @mock_object.update(mock_object_params)
        format.html { redirect_to @mock_object, notice: 'Mock object was successfully updated.' }
        format.json { render :show, status: :ok, location: @mock_object }
      else
        format.html { render :edit }
        format.json { render json: @mock_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mock_objects/1
  # DELETE /mock_objects/1.json
  def destroy
    @mock_object.destroy
    respond_to do |format|
      format.html { redirect_to mock_objects_url, notice: 'Mock object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mock_object
      @mock_object = MockObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mock_object_params
      params.require(:mock_object).permit(:name)
    end
end
