class DiningsController < ApplicationController
  # GET /dinings
  # GET /dinings.xml
  def index
    @dinings = Dining.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dinings }
    end
  end

  # GET /dinings/1
  # GET /dinings/1.xml
  def show
    @dining = Dining.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dining }
    end
  end

  # GET /dinings/new
  # GET /dinings/new.xml
  def new
    @dining = Dining.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dining }
    end
  end

  # GET /dinings/1/edit
  def edit
    @dining = Dining.find(params[:id])
  end

  # POST /dinings
  # POST /dinings.xml
  def create
    @dining = Dining.new(params[:dining])

    respond_to do |format|
      if @dining.save
        flash[:notice] = 'Dining was successfully created.'
        format.html { redirect_to(@dining) }
        format.xml  { render :xml => @dining, :status => :created, :location => @dining }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dining.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dinings/1
  # PUT /dinings/1.xml
  def update
    @dining = Dining.find(params[:id])

    respond_to do |format|
      if @dining.update_attributes(params[:dining])
        flash[:notice] = 'Dining was successfully updated.'
        format.html { redirect_to(@dining) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dining.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dinings/1
  # DELETE /dinings/1.xml
  def destroy
    @dining = Dining.find(params[:id])
    @dining.destroy

    respond_to do |format|
      format.html { redirect_to(dinings_url) }
      format.xml  { head :ok }
    end
  end
end
