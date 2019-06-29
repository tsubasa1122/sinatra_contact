require "rubygems"
require "bundler"

Bundler.require

set :database, {adapter: "sqlite3", database: "contacts.sqlite3"}

class Contact < ActiveRecord::Base
  validates_presence_of :name
end

get "/" do
  now = Time.now
  "こんにちは；#{now}"
  erb :index
end

get "/contact_new" do
  erb :contact_form
end

post "/contacts" do

  name = params[:name]
  contact = Contact.new({name: name})
  contact.save

  redirect "/"

end