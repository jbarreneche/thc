class CultivosController < ApplicationController
  # GET /cultivos
  # GET /cultivos.xml
  def index
    @cultivos = Cultivo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cultivos }
    end
  end

  # GET /cultivos/1
  # GET /cultivos/1.xml
  def show
    @cultivo = Cultivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cultivo }
    end
  end

  # GET /cultivos/new
  # GET /cultivos/new.xml
  def new
    @cultivo = Cultivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cultivo }
    end
  end

  # GET /cultivos/1/edit
  def edit
    @cultivo = Cultivo.find(params[:id])
  end

  # POST /cultivos
  # POST /cultivos.xml
  def create
    @cultivo = Cultivo.new(params[:cultivo])

    respond_to do |format|
      if @cultivo.save
        format.html { redirect_to(@cultivo, :notice => 'Cultivo was successfully created.') }
        format.xml  { render :xml => @cultivo, :status => :created, :location => @cultivo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cultivo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cultivos/1
  # PUT /cultivos/1.xml
  def update
    @cultivo = Cultivo.find(params[:id])

    respond_to do |format|
      if @cultivo.update_attributes(params[:cultivo])
        format.html { redirect_to(@cultivo, :notice => 'Cultivo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cultivo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cultivos/1
  # DELETE /cultivos/1.xml
  def destroy
    @cultivo = Cultivo.find(params[:id])
    @cultivo.destroy

    respond_to do |format|
      format.html { redirect_to(cultivos_url) }
      format.xml  { head :ok }
    end
  end
end
