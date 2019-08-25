class PagesController < ApplicationController
  def index
    @contacts = Contacts.all
  end
  def form
    @first_name = params[:first_name]
    @last_name = params[:last_name]
  end

  def create
    @contacts = Contacts.new(first_name: params[:first_name], last_name: params[:last_name])
    @contacts.save
  end
end
