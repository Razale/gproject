class BeddingsController < ApplicationController
  # GET /beddings
  # GET /beddings.xml
  def index
    @beddings = Bedding.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beddings }
    end
  end

  # GET /beddings/1
  # GET /beddings/1.xml
  def show
    @bedding = Bedding.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bedding }
    end
  end

  # GET /beddings/new
  # GET /beddings/new.xml
  def new
    @bedding = Bedding.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bedding }
    end
  end

  # GET /beddings/1/edit
  def edit
    @bedding = Bedding.find(params[:id])
  end

  # POST /beddings
  # POST /beddings.xml
  def create
    @bedding = Bedding.new(params[:bedding])

    respond_to do |format|
      if @bedding.save
        flash[:notice] = 'Bedding was successfully created.'
        format.html { redirect_to(@bedding) }
        format.xml  { render :xml => @bedding, :status => :created, :location => @bedding }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bedding.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /beddings/1
  # PUT /beddings/1.xml
  def update
    @bedding = Bedding.find(params[:id])

    respond_to do |format|
      if @bedding.update_attributes(params[:bedding])
        flash[:notice] = 'Bedding was successfully updated.'
        format.html { redirect_to(@bedding) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bedding.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /beddings/1
  # DELETE /beddings/1.xml
  def destroy
    @bedding = Bedding.find(params[:id])
    @bedding.destroy

    respond_to do |format|
      format.html { redirect_to(beddings_url) }
      format.xml  { head :ok }
    end
  end
end
