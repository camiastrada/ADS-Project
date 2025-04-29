require 'sinatra'
require 'sequel'
require 'mysql2'
require 'dotenv/load'

require_relative 'frontend'
require_relative 'backend/backend'

=begin
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
=end

