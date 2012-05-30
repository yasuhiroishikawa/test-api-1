class EnqsController < ApplicationController
  # GET /enqs/1
  # GET /enqs/1.json
  def get
    @enqs = Enq.find(params[:id])

    respond_to do |format|
      format.json  { render :json => @enqs }
    end
  end

  # GET /enq_pages/1
  # GET /enq_pages/1.json
  def get_pages
    @page_id = params[:page_id]
  
    @enq_pages = Enq.find(params[:id])

    respond_to do |format|
      format.json  { render :json => @enq_pages }
    end
  end
  
  # GET /enqs
  # GET /enqs.xml
  def index
    @enqs = Enq.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @enqs }
    end
  end

  # GET /enqs/1
  # GET /enqs/1.xml
  def show
    @enq = Enq.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @enq }
    end
  end

  # GET /enqs/new
  # GET /enqs/new.xml
  def new
    @enq = Enq.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @enq }
    end
  end

  # GET /enqs/1/edit
  def edit
    @enq = Enq.find(params[:id])
  end

  # POST /enqs
  # POST /enqs.xml
  def create
    @enq = Enq.new(params[:enq])

    respond_to do |format|
      if @enq.save
        format.html { redirect_to(@enq, :notice => 'Enq was successfully created.') }
        format.xml  { render :xml => @enq, :status => :created, :location => @enq }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @enq.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /enqs/1
  # PUT /enqs/1.xml
  def update
    @enq = Enq.find(params[:id])

    respond_to do |format|
      if @enq.update_attributes(params[:enq])
        format.html { redirect_to(@enq, :notice => 'Enq was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @enq.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /enqs/1
  # DELETE /enqs/1.xml
  def destroy
    @enq = Enq.find(params[:id])
    @enq.destroy

    respond_to do |format|
      format.html { redirect_to(enqs_url) }
      format.xml  { head :ok }
    end
  end
end
