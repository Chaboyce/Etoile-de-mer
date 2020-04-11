class ContactsController < ApplicationController



  def index
    skip_policy_scope
    @contact = Contact.new(params[:contact])

  end

  def create
    skip_policy_scope
    @contact = Contact.new(params[:contact])
    authorize @contact
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        @contact = Contact.new
        format.html { render 'index'}
        format.js   { flash.alert[:success] = @message = "Thank you for your message. I'll get back to you soon!" }
      else
        format.html { render 'index' }
        format.js   { flash.alert[:error] = @message = "Message did not send." }
      end
    end
  end

end
