class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      render json: @contact
    else
      render json: { errors: @contact.errors }, status: 422
    end
  end

  def new
    @contact = Contact.new
  end

  def index
    @contacts = Contact.all

    render json: @contacts
  end

  private

  def contact_params
    permitted = params.require(:contact).permit(:acme_first_name, :acme_last_name, :acme_email_address)

    permitted.transform_keys { |key| key.to_s.sub(/^acme_/, "") }
  end
end
