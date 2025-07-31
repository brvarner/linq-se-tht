class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      render json: @contact
    else
      render :new
    end
  end

  def new
    @contact = Contact.new
  end

  def index
    @contact = Contacts.all
  end
end
