class CoffeeTablesController < ApplicationController
  # GET /coffee_tables
  # GET /coffee_tables.xml
  def index
    @coffee_tables = CoffeeTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @coffee_tables }
    end
  end

  # GET /coffee_tables/1
  # GET /coffee_tables/1.xml
  def show
    @coffee_table = CoffeeTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @coffee_table }
    end
  end

  # GET /coffee_tables/new
  # GET /coffee_tables/new.xml
  def new
    @coffee_table = CoffeeTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @coffee_table }
    end
  end

  # GET /coffee_tables/1/edit
  def edit
    @coffee_table = CoffeeTable.find(params[:id])
  end

  # POST /coffee_tables
  # POST /coffee_tables.xml
  def create
    @coffee_table = CoffeeTable.new(params[:coffee_table])

    respond_to do |format|
      if @coffee_table.save
        flash[:notice] = 'CoffeeTable was successfully created.'
        format.html { redirect_to(@coffee_table) }
        format.xml  { render :xml => @coffee_table, :status => :created, :location => @coffee_table }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @coffee_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /coffee_tables/1
  # PUT /coffee_tables/1.xml
  def update
    @coffee_table = CoffeeTable.find(params[:id])

    respond_to do |format|
      if @coffee_table.update_attributes(params[:coffee_table])
        flash[:notice] = 'CoffeeTable was successfully updated.'
        format.html { redirect_to(@coffee_table) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @coffee_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coffee_tables/1
  # DELETE /coffee_tables/1.xml
  def destroy
    @coffee_table = CoffeeTable.find(params[:id])
    @coffee_table.destroy

    respond_to do |format|
      format.html { redirect_to(coffee_tables_url) }
      format.xml  { head :ok }
    end
  end
end
