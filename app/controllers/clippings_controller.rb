class ClippingsController < ApplicationController
  # GET /clippings
  # GET /clippings.xml
  def index
    @clippings = Clipping.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clippings }
    end
  end

  # GET /clippings/1
  # GET /clippings/1.xml
  def show
    @clipping = Clipping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clipping }
    end
  end

  # GET /clippings/new
  # GET /clippings/new.xml
  def new
    @clipping = Clipping.new
    @clipping.build_notebook

    @clipping.title = params[:t]
    @clipping.content = params[:s]
    @clipping.url = params[:u]

    @notebook = Notebook.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @clipping }
      format.js 
    end
  end

  # GET /clippings/1/edit
  def edit
    @clipping = Clipping.find(params[:id])
  end

  # POST /clippings
  # POST /clippings.xml
  def create
    @clipping = Clipping.new(params[:clipping])

    respond_to do |format|
      if @clipping.save
        format.html { redirect_to(@clipping, :notice => 'Clipping was successfully created.') }
        format.xml  { render :xml => @clipping, :status => :created, :location => @clipping }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @clipping.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clippings/1
  # PUT /clippings/1.xml
  def update
    @clipping = Clipping.find(params[:id])

    respond_to do |format|
      if @clipping.update_attributes(params[:clipping])
        format.html { redirect_to(@clipping, :notice => 'Clipping was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clipping.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clippings/1
  # DELETE /clippings/1.xml
  def destroy
    @clipping = Clipping.find(params[:id])
    @clipping.destroy

    respond_to do |format|
      format.html { redirect_to(clippings_url) }
      format.xml  { head :ok }
    end
  end
end
