class VisualisationsController < ApplicationController
  # GET /visualisations
  # GET /visualisations.json
  def index
    @visualisations = Visualisation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @visualisations }
    end
  end

  # GET /visualisations/1
  # GET /visualisations/1.json
  def show
    @visualisation = Visualisation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @visualisation }
    end
  end

  # GET /visualisations/new
  # GET /visualisations/new.json
  def new
    @visualisation = Visualisation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @visualisation }
    end
  end

  # GET /visualisations/1/edit
  def edit
    @visualisation = Visualisation.find(params[:id])
  end

  # POST /visualisations
  # POST /visualisations.json
  def create
    @visualisation = Visualisation.new(params[:visualisation])

    respond_to do |format|
      if @visualisation.save
        format.html { redirect_to @visualisation, notice: 'Visualisation was successfully created.' }
        format.json { render json: @visualisation, status: :created, location: @visualisation }
      else
        format.html { render action: "new" }
        format.json { render json: @visualisation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /visualisations/1
  # PUT /visualisations/1.json
  def update
    @visualisation = Visualisation.find(params[:id])

    respond_to do |format|
      if @visualisation.update_attributes(params[:visualisation])
        format.html { redirect_to @visualisation, notice: 'Visualisation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @visualisation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visualisations/1
  # DELETE /visualisations/1.json
  def destroy
    @visualisation = Visualisation.find(params[:id])
    @visualisation.destroy

    respond_to do |format|
      format.html { redirect_to visualisations_url }
      format.json { head :no_content }
    end
  end
end
