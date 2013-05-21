class UseroksController < ApplicationController
  # GET /useroks
  # GET /useroks.json
  def index
    @useroks = Userok.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @useroks }
    end
  end

  # GET /useroks/1
  # GET /useroks/1.json
  def show
    @userok = Userok.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userok }
    end
  end

  # GET /useroks/new
  # GET /useroks/new.json
  def new
    @userok = Userok.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @userok }
    end
  end

  # GET /useroks/1/edit
  def edit
    @userok = Userok.find(params[:id])
  end

  # POST /useroks
  # POST /useroks.json
  def create
    @userok = Userok.new(params[:userok])

    respond_to do |format|
      if @userok.save
        format.html { redirect_to @userok, notice: 'Userok was successfully created.' }
        format.json { render json: @userok, status: :created, location: @userok }
      else
        format.html { render action: "new" }
        format.json { render json: @userok.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /useroks/1
  # PUT /useroks/1.json
  def update
    @userok = Userok.find(params[:id])

    respond_to do |format|
      if @userok.update_attributes(params[:userok])
        format.html { redirect_to @userok, notice: 'Userok was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @userok.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /useroks/1
  # DELETE /useroks/1.json
  def destroy
    @userok = Userok.find(params[:id])
    @userok.destroy

    respond_to do |format|
      format.html { redirect_to useroks_url }
      format.json { head :no_content }
    end
  end
end
