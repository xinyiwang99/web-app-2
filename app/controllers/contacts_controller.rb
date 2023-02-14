class ContactsController < ApplicationController

  def show
    @contact = Contact.find_by({ "id" => params["id"] })
    @company = Company.find_by({ "id" => @contact["company_id"] })
  end

  def new
    @contact = Contact.new
  end
  
def create
  @contact = Contact.new
  @contact["first_name"] = params["contact"]["first_name"]
  @contact["last_name"] = params["contact"]["last_name"]
  @contact["email"] = params["contact"]["email"]
  @contact["phone"] = params["contact"]["phone"]
  @contact["company_id"] = params["contact"]["company_id"]
  @contact.save
  redirect_to "/companies/#{@contact["company_id"]}"
end
end
