class ArtController < ApplicationController
  # GET /art
  # GET /art.json
  def index
    @art = Art.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @art }
    end
  end

  # GET /art/1
  # GET /art/1.json
  def show
    @art = Art.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @art }
    end
  end

  # GET /art/new
  # GET /art/new.json
  def new
    @art = Art.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @art }
    end
  end

  # GET /art/1/edit
  def edit
    @art = Art.find(params[:id])
  end

  # POST /art
  # POST /art.json
  def create
    @art = Art.new(params[:art])

    respond_to do |format|
      if @art.save
        format.html { redirect_to @art, notice: 'Art was successfully created.' }
        format.json { render json: @art, status: :created, location: @art }
      else
        format.html { render action: "new" }
        format.json { render json: @art.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /art/1
  # PUT /art/1.json
  def update
    @art = Art.find(params[:id])

    respond_to do |format|
      if @art.update_attributes(params[:art])
        format.html { redirect_to @art, notice: 'Art was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @art.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art/1
  # DELETE /art/1.json
  def destroy
    @art = Art.find(params[:id])
    @art.destroy

    respond_to do |format|
      format.html { redirect_to art_index_url }
      format.json { head :ok }
    end
  end
end
