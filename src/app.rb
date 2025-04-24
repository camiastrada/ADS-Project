require 'sinatra'
require 'sequel'
require 'mysql2'
require 'dotenv/load'

DB = Sequel.connect(
  adapter:  'mysql2',
  host:     ENV['DB_HOST'],
  database: ENV['DB_NAME'],
  user:     ENV['DB_USER'],
  password: ENV['DB_PASSWORD']
)

DB.create_table? :users do
  primary_key :id
  String :name
end

class User < Sequel::Model(DB[:users])
end

get '/main' do
  erb :main
end

get '/hello' do
  erb :hello
end

get '/bye' do
  'bye sinatra'
end
