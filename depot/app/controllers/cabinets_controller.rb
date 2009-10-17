class CabinetsController < ApplicationController
  # GET /cabinets
  # GET /cabinets.xml
  def index
    @cabinets = Cabinet.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cabinets }
    end
  end

  # GET /cabinets/1
  # GET /cabinets/1.xml
  def show
    @cabinet = Cabinet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cabinet }
    end
  end

  # GET /cabinets/new
  # GET /cabinets/new.xml
  def new
    @cabinet = Cabinet.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cabinet }
    end
  end

  # GET /cabinets/1/edit
  def edit
    @cabinet = Cabinet.find(params[:id])
  end

  # POST /cabinets
  # POST /cabinets.xml
  def create
    @cabinet = Cabinet.new(params[:cabinet])

    respond_to do |format|
      if @cabinet.save
        flash[:notice] = 'Cabinet was successfully created.'
        format.html { redirect_to(@cabinet) }
        format.xml  { render :xml => @cabinet, :status => :created, :location => @cabinet }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cabinet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cabinets/1
  # PUT /cabinets/1.xml
  def update
    @cabinet = Cabinet.find(params[:id])

    respond_to do |format|
      if @cabinet.update_attributes(params[:cabinet])
        flash[:notice] = 'Cabinet was successfully updated.'
        format.html { redirect_to(@cabinet) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cabinet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cabinets/1
  # DELETE /cabinets/1.xml
  def destroy
    @cabinet = Cabinet.find(params[:id])
    @cabinet.destroy

    respond_to do |format|
      format.html { redirect_to(cabinets_url) }
      format.xml  { head :ok }
    end
  end
end
