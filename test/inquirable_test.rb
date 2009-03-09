require 'test/unit'

require 'rubygems'
require 'active_record'

require "#{File.dirname(__FILE__)}/../init"
 
ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :dbfile => ":memory:")

ActiveRecord::Schema.define(:version => 1) do
  create_table :people do |t|
    t.column :name, :string
    t.column :status, :string
  end
end

class Person < ActiveRecord::Base
  acts_as_inquirable :status
end

class InquirableTest < Test::Unit::TestCase
  def setup
    @person = Person.new(:name => "Carlos", :status => "pending")
  end
  
  def test_status_is_inquirable
    assert @person.status.pending?
  end
end