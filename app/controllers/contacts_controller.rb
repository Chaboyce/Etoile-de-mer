class ContactsController < ApplicationController
  def index
    @contact = Contact.new(params[:contact])

  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    if @contact.save
      render :index
    else
      redirect_to contacts_path
    end
  end

end
