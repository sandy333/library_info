class LibraryInfosController < ApplicationController
  # GET /library_infos
  # GET /library_infos.json
  def index
    @library_infos = LibraryInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @library_infos }
    end
  end

  # GET /library_infos/1
  # GET /library_infos/1.json
  def show
    @library_info = LibraryInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @library_info }
    end
  end

  # GET /library_infos/new
  # GET /library_infos/new.json
  def new
    @library_info = LibraryInfo.new
@w = welcome_message
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @library_info }
    end
  end

  # GET /library_infos/1/edit
  def edit
    @library_info = LibraryInfo.find(params[:id])
  end

  # POST /library_infos
  # POST /library_infos.json
  def create
    @library_info = LibraryInfo.new(params[:library_info])

    respond_to do |format|
      if @library_info.save
        format.html { redirect_to @library_info, notice: 'Library info was successfully created.' }
        format.json { render json: @library_info, status: :created, location: @library_info }
      else
        format.html { render action: "new" }
        format.json { render json: @library_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /library_infos/1
  # PUT /library_infos/1.json
  def update
    @library_info = LibraryInfo.find(params[:id])

    respond_to do |format|
      if @library_info.update_attributes(params[:library_info])
        format.html { redirect_to @library_info, notice: 'Library info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @library_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /library_infos/1
  # DELETE /library_infos/1.json
  def destroy
    @library_info = LibraryInfo.find(params[:id])
    @library_info.destroy

    respond_to do |format|
      format.html { redirect_to library_infos_url }
      format.json { head :no_content }
    end
  end
end
