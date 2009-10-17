class SofasController < ApplicationController
  # GET /sofas
  # GET /sofas.xml
  def index
    @sofas = Sofa.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sofas }
    end
  end

  # GET /sofas/1
  # GET /sofas/1.xml
  def show
    #@sofa = Sofa.find(params[:title])
    @sofa = Sofa.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sofa }
    end
  end

  # GET /sofas/new
  # GET /sofas/new.xml
  def new
    @sofa = Sofa.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sofa }
    end
  end

  # GET /sofas/1/edit
  def edit
    @sofa = Sofa.find(params[:id])
  end

  # POST /sofas
  # POST /sofas.xml
  def create
    @sofa = Sofa.new(params[:sofa])

    respond_to do |format|
      if @sofa.save
        flash[:notice] = 'Sofa was successfully created.'
        format.html { redirect_to(@sofa) }
        format.xml  { render :xml => @sofa, :status => :created, :location => @sofa }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sofa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sofas/1
  # PUT /sofas/1.xml
  def update
    @sofa = Sofa.find(params[:id])

    respond_to do |format|
      if @sofa.update_attributes(params[:sofa])
        flash[:notice] = 'Sofa was successfully updated.'
        format.html { redirect_to(@sofa) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sofa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sofas/1
  # DELETE /sofas/1.xml
  def destroy
    @sofa = Sofa.find(params[:id])
    @sofa.destroy

    respond_to do |format|
      format.html { redirect_to(sofas_url) }
      format.xml  { head :ok }
    end
  end
  
end
