require 'data_mapper'
require 'dm-postgres-adapter'


class Peep
  DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitter_#{ENV['RACK_ENV']}")
  include DataMapper::Resource

  property :id, Serial
  property :message, String
  property :time , Time
end

DataMapper::Logger.new($stdout, :debug)

DataMapper.finalize
DataMapper.auto_upgrade!
