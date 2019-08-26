class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  def index
    @contacts = Contact.all
  end
  
  def show
  end

  def new
    @contact = Contact.new
  end


  def create
    @contact = Contact.new(contact_params)
    @contact.save
   redirect_to contacts_path
  end

  def edit
  end

  def update
    @contact.update(contact_params)
    redirect_to contacts_path
  end

  def destroy
    @contact.destroy
    redirect_to contacts_path
  end

  private

  def contact_params
    params.permit(:first_name, :last_name)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end
end
