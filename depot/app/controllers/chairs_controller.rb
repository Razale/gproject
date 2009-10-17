class ChairsController < ApplicationController
  # GET /chairs
  # GET /chairs.xml
  def index
    @chairs = Chair.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @chairs }
    end
  end

  # GET /chairs/1
  # GET /chairs/1.xml
  def show
    @chair = Chair.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @chair }
    end
  end

  # GET /chairs/new
  # GET /chairs/new.xml
  def new
    @chair = Chair.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @chair }
    end
  end

  # GET /chairs/1/edit
  def edit
    @chair = Chair.find(params[:id])
  end

  # POST /chairs
  # POST /chairs.xml
  def create
    @chair = Chair.new(params[:chair])

    respond_to do |format|
      if @chair.save
        flash[:notice] = 'Chair was successfully created.'
        format.html { redirect_to(@chair) }
        format.xml  { render :xml => @chair, :status => :created, :location => @chair }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @chair.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /chairs/1
  # PUT /chairs/1.xml
  def update
    @chair = Chair.find(params[:id])

    respond_to do |format|
      if @chair.update_attributes(params[:chair])
        flash[:notice] = 'Chair was successfully updated.'
        format.html { redirect_to(@chair) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @chair.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /chairs/1
  # DELETE /chairs/1.xml
  def destroy
    @chair = Chair.find(params[:id])
    @chair.destroy

    respond_to do |format|
      format.html { redirect_to(chairs_url) }
      format.xml  { head :ok }
    end
  end
end
