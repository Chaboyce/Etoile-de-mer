class ContactsController < ApplicationController



  def new
    skip_policy_scope
    @contact = Contact.new
  end

  def create
    skip_policy_scope
    @contact = Contact.new(params[:contact])
    authorize @contact
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'cannot send message'
    render :new
    end
  end
end
