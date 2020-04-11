class ContactsController < ApplicationController
  def index
    @contact = Contact.new(params[:contact])

  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    if @contact.deliver
      @contact = Contact.new
      render :index, notice: "Message envoyé"
    else
      redirect_to contacts_path, notice: "Message non envoyé"
    end

  end

end
