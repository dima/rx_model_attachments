class ContactsController < ApplicationController
  # GET /contacts
  # GET /contacts.xml
  # GET /contacts.fxml
  def index
    @contacts = Contact.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contacts }
      format.fxml  { render :fxml => @contacts.to_fxml(:methods => [:attachment_url]) }
    end
  end

  # GET /contacts/1
  # GET /contacts/1.xml
  # GET /contacts/1.fxml
  def show
    @contact = Contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contact }
      format.fxml  { render :fxml => @contact.to_fxml(:methods => [:attachment_url]) }
    end
  end

  # GET /contacts/new
  # GET /contacts/new.xml
  def new
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contact }
    end
  end

  # GET /contacts/1/edit
  def edit
    @contact = Contact.find(params[:id])
  end

  # POST /contacts
  # POST /contacts.xml
  # POST /contacts.fxml
  def create
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.save
        flash[:notice] = 'Contact was successfully created.'
        format.html { redirect_to(@contact) }
        format.xml  { render :xml => @contact, :status => :created, :location => @contact }
        format.fxml  { render :fxml => @contact.to_fxml(:methods => [:attachment_url]) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contact.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @contact.errors }
      end
    end
  end

  # PUT /contacts/1
  # PUT /contacts/1.xml
  # PUT /contacts/1.fxml
  def update
    @contact = Contact.find(params[:id])
    @saved = @contact.update_attributes(params[:contact])

    respond_to do |format|
      if @saved
        flash[:notice] = 'Contact was successfully updated.'
        format.html { redirect_to(@contact) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @contact.to_fxml(:methods => [:attachment_url]) }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contact.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @contact.errors }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.xml
  # DELETE /contacts/1.fxml
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to(contacts_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @contact }
    end
  end
end