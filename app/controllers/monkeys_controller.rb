class MonkeysController < ApplicationController
  # GET /monkeys
  # GET /monkeys.xml
  # GET /monkeys.fxml
  def index
    @monkeys = Monkey.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @monkeys }
      format.fxml  { render :fxml => @monkeys }
    end
  end

  # GET /monkeys/1
  # GET /monkeys/1.xml
  # GET /monkeys/1.fxml
  def show
    @monkey = Monkey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @monkey }
      format.fxml  { render :fxml => @monkey }
    end
  end

  # GET /monkeys/new
  # GET /monkeys/new.xml
  def new
    @monkey = Monkey.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @monkey }
    end
  end

  # GET /monkeys/1/edit
  def edit
    @monkey = Monkey.find(params[:id])
  end

  # POST /monkeys
  # POST /monkeys.xml
  # POST /monkeys.fxml
  def create
    @monkey = Monkey.new(params[:monkey])

    respond_to do |format|
      if @monkey.save
        flash[:notice] = 'Monkey was successfully created.'
        format.html { redirect_to(@monkey) }
        format.xml  { render :xml => @monkey, :status => :created, :location => @monkey }
        format.fxml  { render :fxml => @monkey }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @monkey.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @monkey.errors }
      end
    end
  end

  # PUT /monkeys/1
  # PUT /monkeys/1.xml
  # PUT /monkeys/1.fxml
  def update
    @monkey = Monkey.find(params[:id])
    @saved = @monkey.update_attributes(params[:monkey])

    respond_to do |format|
      if @saved
        flash[:notice] = 'Monkey was successfully updated.'
        format.html { redirect_to(@monkey) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @monkey }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @monkey.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @monkey.errors }
      end
    end
  end

  # DELETE /monkeys/1
  # DELETE /monkeys/1.xml
  # DELETE /monkeys/1.fxml
  def destroy
    @monkey = Monkey.find(params[:id])
    @monkey.destroy

    respond_to do |format|
      format.html { redirect_to(monkeys_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @monkey }
    end
  end
end