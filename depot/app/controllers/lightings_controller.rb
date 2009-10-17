class LightingsController < ApplicationController
  # GET /lightings
  # GET /lightings.xml
  def index
    @lightings = Lighting.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lightings }
    end
  end

  # GET /lightings/1
  # GET /lightings/1.xml
  def show
    @lighting = Lighting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lighting }
    end
  end

  # GET /lightings/new
  # GET /lightings/new.xml
  def new
    @lighting = Lighting.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lighting }
    end
  end

  # GET /lightings/1/edit
  def edit
    @lighting = Lighting.find(params[:id])
  end

  # POST /lightings
  # POST /lightings.xml
  def create
    @lighting = Lighting.new(params[:lighting])

    respond_to do |format|
      if @lighting.save
        flash[:notice] = 'Lighting was successfully created.'
        format.html { redirect_to(@lighting) }
        format.xml  { render :xml => @lighting, :status => :created, :location => @lighting }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lighting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lightings/1
  # PUT /lightings/1.xml
  def update
    @lighting = Lighting.find(params[:id])

    respond_to do |format|
      if @lighting.update_attributes(params[:lighting])
        flash[:notice] = 'Lighting was successfully updated.'
        format.html { redirect_to(@lighting) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lighting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lightings/1
  # DELETE /lightings/1.xml
  def destroy
    @lighting = Lighting.find(params[:id])
    @lighting.destroy

    respond_to do |format|
      format.html { redirect_to(lightings_url) }
      format.xml  { head :ok }
    end
  end
end
